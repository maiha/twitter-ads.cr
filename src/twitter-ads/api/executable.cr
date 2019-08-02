module TwitterAds::Api
  module Executable
    private def build_headers : HTTP::Headers
      HTTP::Headers{
        "Host"          => host_header,
        "Content-Type"  => "application/json",
        "Accept"        => "application/json",
        "User-Agent"    => user_agent,
      }
    end

    private def host_header
      String.build do |io|
        if host = uri.host
          io << host
        end
        if uri.port && !((uri.scheme == "http" && uri.port == 80) || (uri.scheme == "https" && uri.port = 443))
          io << ':'
          io << uri.port.to_s
        end
      end
    end

    private def build_full_url(uri : URI, req : HTTP::Request) : String
      uri = uri.dup
      uri.path = req.path
      uri.query = req.query_params.to_s
      uri.to_s
    end

    protected def new_http : HTTP::Client
      consumer = OAuth::Consumer.new(uri.host.to_s, consumer_key, consumer_secret)
      token = OAuth::AccessToken.new(access_token, access_token_secret)
      http = HTTP::Client.new(uri)
      http.dns_timeout     = dns_timeout
      http.connect_timeout = connect_timeout
      http.read_timeout    = read_timeout
      consumer.authenticate(http, token)
      return http
    end

    private def build_logger : Logger
      logger = Logger.new(STDOUT)
      logger.progname = "twitter-ads"
      logger
    end

    def before_execute
      @before_execute ||= [] of ( (HTTP::Client, HTTP::Request) ->)
    end

    def before_execute(&callback : (HTTP::Client, HTTP::Request) ->)
      before_execute << callback
    end

    def execute!(http : HTTP::Client, req : HTTP::Request) : String
      res = execute(http, req)
      if res.success?
        return res.body
      else
        raise TwitterAds::Api::Error.new(res)
      end
    end
    
    def execute(http : HTTP::Client, req : HTTP::Request, requested_at : Time = Time.now)
      @before_execute.try &.each &.call(http, req)
    
      logger.debug "HTTP request: #{build_full_url(uri, req)}"
      logger.debug "HTTP headers: #{req.headers.to_h}"
    
      if dryrun
        err = Dryrun.new
        err.uri  = uri
        err.http = http
        err.req  = req
        raise err
      end

      response = http.exec(req)
      return response
    ensure
      responsed_at = Time.now

      if res = response
        logger.debug "HTTP response (status %s)" % res.status_code
        logger.debug "HTTP response: %s" % res.headers.to_h
      end
    end

    private def to_query_string(hash : Hash)
      HTTP::Params.build do |form_builder|
        hash.each do |key, value|
          form_builder.add(key, value)
        end
      end
    end
  end
end
