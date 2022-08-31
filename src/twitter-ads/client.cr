require "./dryrun"

module TwitterAds
  class Client
    API_DEFAULT_VERSION = "11"

    API_DEFAULT_DOMAIN = "https://api.twitter.com"
    ADS_DEFAULT_DOMAIN = "https://ads-api.twitter.com"
    ADS_SANDBOX_DOMAIN = "https://ads-api-sandbox.twitter.com"

    # API
    var api_version : String = API_DEFAULT_VERSION
    var api_suffix  : String = "" # ".json"

    # OAuth
    var consumer_key        : String
    var consumer_secret     : String
    var access_token        : String
    var access_token_secret : String
    var bearer_token        : String

    # HTTP
    var uri : URI = URI.parse(ADS_DEFAULT_DOMAIN)
    var user_agent      : String = "twitter-ads.cr"
    var dns_timeout     : Float64 = 3.0
    var connect_timeout : Float64 = 5.0
    var read_timeout    : Float64 = 300.0
    var switch_domain   : Bool = true  # switch from "ads" to "api" when "/1.1"
    var oauth2_standard : Bool = false # use OAuth2 for standard api
    var oauth2_ads      : Bool = false # use OAuth2 for ads api
    
    var logger : Logger = Logger.new(nil)
    var dryrun : Bool = false

    # JQ
    var jq : Jq = JqCommand.new

    include Api::Executable

    def initialize(@consumer_key, @consumer_secret, @access_token, @access_token_secret, @bearer_token = nil, url : String? = nil, @logger : Logger? = nil)
      self.url = url.not_nil! if url
    end

    ######################################################################
    ### API methods

    # See ./api/*.cr
    
    ######################################################################
    ### HTTP methods
    
    def get(path : String, params = {} of String => String) : Response
      execute(Request.new(:GET, path, params))
    end

    def post(path : String, form = {} of String => String) : Response
      execute(Request.new(:POST, path, params))
    end

    ######################################################################
    ### Accessor methods
    
    def authorized?
      return false if consumer_key.empty?
      return false if consumer_secret.empty?
      return false if access_token.empty?
      return false if access_token_secret.empty?
      return true
    end

    def url=(s : String)
      @uri = URI.parse(s)
    end
  end

  def Client.from_twurlrc(path = "~/.twurlrc") : Client
    rc = Twurlrc.load_file(path)
    c = rc.default? || raise "no default_profile in '#{path}'"
    Client.new(c.consumer_key, c.consumer_secret, c.token, c.secret, c.bearer.presence)
  end
end
