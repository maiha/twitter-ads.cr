require "./dryrun"
require "./twurlrc"

module TwitterAds
  class Client
    # OAuth
    var consumer_key        : String
    var consumer_secret     : String
    var access_token        : String
    var access_token_secret : String

    # HTTP
    var uri : URI = URI.parse("https://ads-api.twitter.com")
    var user_agent      : String = "twitter-ads.cr"
    var dns_timeout     : Float64 = 3.0
    var connect_timeout : Float64 = 5.0
    var read_timeout    : Float64 = 300.0

    var logger : Logger = Logger.new(nil)
    var dryrun : Bool = false

    include Api::Executable
    include Api::Accounts

    def initialize(@consumer_key, @consumer_secret, @access_token, @access_token_secret, url : String? = nil, @logger : Logger? = nil)
      self.url = url.not_nil! if url
    end

    def url=(s : String)
      @uri = URI.parse(s)
    end
    
    def get(path : String, params = {} of String => String) : String
      path += "?#{to_query_string(params)}" unless params.empty?
      req = HTTP::Request.new("GET", path, build_headers)
      execute!(new_http, req)
    end

    def post(path : String, body) : String
      req = HTTP::Request.new("POST", path, build_headers, body)
      execute!(new_http, req)
    end

    def post(path : String, form = {} of String => String) : String
      req = HTTP::Request.new("POST", path, build_headers, form)
      req.headers["Content-Type"] = "application/x-www-form-urlencoded"
      execute!(new_http, req)
    end
  end

  def Client.from_twurlrc(path = "~/.twurlrc") : Client
    rc = Twurlrc.load_file(path)
    c = rc.default? || raise "no default_profile in '#{path}'"
    Client.new(c.consumer_key, c.consumer_secret, c.token, c.secret)
  end
end
