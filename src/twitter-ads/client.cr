
module TwitterAds
  API_VERSION = "5"

  class Client
    var consumer_key        : String
    var consumer_secret     : String
    var access_token        : String
    var access_token_secret : String

    var api_version : String = API_VERSION

    var logger : Logger

    include Api::Accounts

    def initialize(@consumer_key, @consumer_secret, @access_token, @access_token_secret, @api_version : String? = nil, @logger : Logger? = nil)
    end

    private def build_logger : Logger
      logger = Logger.new(STDOUT)
      logger.progname = "twitter-ads"
      logger
    end
  end
end
