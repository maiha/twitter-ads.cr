require "./twurlrc"

module TwitterAds
  class Client
    var consumer_key        : String
    var consumer_secret     : String
    var access_token        : String
    var access_token_secret : String

    var uri : URI = URI.parse("https://ads-api.twitter.com")
    var user_agent : String = "twitter-ads.cr"

    var logger : Logger

    include Api::Accounts

    def initialize(@consumer_key, @consumer_secret, @access_token, @access_token_secret, url : String? = nil, @logger : Logger? = nil)
      @uri = URI.parse(url.not_nil!) if url
    end

    def get(path : String, params = {} of String => String) : String
      path += "?#{to_query_string(params)}" unless params.empty?
      res = new_http.get(path)
      return handle_response(res)
    end

    def post(path : String, form = {} of String => String) : String
      res = new_http.post(path, form: form)
      return handle_response(res)
    end

    protected def new_http : HTTP::Client
      consumer = OAuth::Consumer.new(uri.host, consumer_key, consumer_secret)
      token = OAuth::AccessToken.new(access_token, access_token_secret)
      http = HTTP::Client.new(uri)
      consumer.authenticate(http, token)
      return http
    end

    private def build_logger : Logger
      logger = Logger.new(STDOUT)
      logger.progname = "twitter-ads"
      logger
    end

    private def handle_response(res : HTTP::Client::Response) : String
      if res.success?
        return res.body
      else
        raise TwitterAds::Api::Error.new(res)
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

  def Client.from_twurlrc(path = "~/.twurlrc") : Client
    rc = Twurlrc.load_file(path)
    c = rc.default? || raise "no default_profile in '#{path}'"
    Client.new(c.consumer_key, c.consumer_secret, c.token, c.secret)
  end
end
