module TwitterAds::Api
  module Executable
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

    def before_execute
      @before_execute ||= [] of (Request ->)
    end

    def before_execute(&callback : Request ->)
      before_execute << callback
    end

    def execute(req : Request) : Response
      # remove 'cursor' which contains empty string
      params = req.http.query_params
      params.delete("cursor") if params["cursor"]? == ""
      # TODO: move to 'before_execute'?

      @before_execute.try &.each &.call(req)
    
      logger.debug "HTTP request: #{req.full_url}"
      logger.debug "HTTP headers: #{req.http.headers.to_h}"

      http = new_http
      
      if dryrun
        err = Dryrun.new
        err.uri  = req.uri
        err.http = http
        err.req  = req.http
        raise err
      end

      response = http.exec(req.http)
      return Response.new(response, req)
    ensure
      responsed_at = Time.now

      if res = response
        logger.debug "HTTP response (status %s)" % res.status_code
        logger.debug "HTTP response: %s" % res.headers.to_h
      end
    end
  end
end
