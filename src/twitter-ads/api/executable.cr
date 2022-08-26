module TwitterAds::Api
  module Executable
    protected def new_http(uri : URI, path : String) : HTTP::Client
      http = HTTP::Client.new(uri)
      http.dns_timeout     = dns_timeout
      http.connect_timeout = connect_timeout
      http.read_timeout    = read_timeout

      if (is_standard_api?(path) && oauth2_standard) || oauth2_ads
        # OAuth2
        bearer_token? || raise "OAuth2 is requested, but Bearer token is not set."
        token = OAuth2::AccessToken::Bearer.new(bearer_token, nil)
        token.authenticate(http)
      else
        # OAuth1
        consumer = OAuth::Consumer.new(uri.host.to_s, consumer_key, consumer_secret)
        token = OAuth::AccessToken.new(access_token, access_token_secret)
        consumer.authenticate(http, token)
      end

      return http
    end

    def before_execute
      @before_execute ||= [] of (Request ->)
    end

    def before_execute(&callback : Request ->)
      before_execute << callback
    end

    def after_execute
      @after_execute ||= [] of ((Request, HTTP::Client::Response?) ->)
    end

    def after_execute(&callback : (Request, HTTP::Client::Response?) ->)
      after_execute << callback
    end

    def execute(req : Request) : Response
      response : HTTP::Client::Response? = nil

      # remove entries which contain empty string
      params = req.http.query_params
      params.each do |k,v|
        params.delete(k) if v == ""
      end
      # TODO: move to 'before_execute'?

      # calculate runtime values before calling `before_execute`
      
      # resolve current uri by `switch_domain` and the `path`
      uri = calculate_current_uri(uri(), req, switch_domain: switch_domain)
      req.runtime_uri = uri
      
      before_execute.each &.call(req)

      logger.debug "HTTP request: #{req.full_url}"
      logger.debug "HTTP headers: #{req.http.headers.to_h}"

      http = new_http(req.runtime_uri, req.resource)

      if dryrun
        http.before_request do |request|
          err = Dryrun.new
          err.uri  = req.runtime_uri
          err.http = http
          err.req  = request
          raise err
        end
      end

      req.requested_at = Pretty.now
      response = http.exec(req.http)
      return Response.new(response, req)
    ensure
      if res = response
        logger.debug "HTTP response (status %s)" % res.status_code
        logger.debug "HTTP response: %s" % res.headers.to_h
      end

      after_execute.each(&.call(req, response))
    end

    # Although this library is created for Twitter Ads API,
    # this also supports some standard Twitter API about tweets.
    # It would be nice if the both domains are automatically switched.
    # `switch_domain` option enables it.
    private def calculate_current_uri(uri : URI, req : Request, switch_domain : Bool)
      if switch_domain && is_standard_api?(req.resource)
        # Switch uri only if the current value is "ads-api.twitter.com",
        # since we don't want to change uri under mocking environments.
        if uri.to_s == Client::ADS_DEFAULT_DOMAIN
          return URI.parse(Client::API_DEFAULT_DOMAIN)
        end
      end

      return uri
    end

    private def is_standard_api?(path : String) : Bool
      return true if path.starts_with?("/1/")
      return true if path.starts_with?("/1.")
      return true if path.starts_with?("/2/")
      return true if path.starts_with?("/3/")
      return true if path.starts_with?("/4/")
      return false
    end
  end
end
