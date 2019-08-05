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

    def initialize(@consumer_key, @consumer_secret, @access_token, @access_token_secret, url : String? = nil, @logger : Logger? = nil)
      self.url = url.not_nil! if url
    end

    ######################################################################
    ### API methods
    
    def accounts(count : Int32 = 200, cursor : String = "") : Api::Accounts
      res = get("/5/accounts.json", {"count" => count.to_s, "cursor" => cursor})
      Api::Accounts.new(res)
    end

    def campaigns(account_id : String, count : Int32 = 200, cursor : String = "") : Api::Campaigns
      res = get("/5/accounts/#{account_id}/campaigns.json", {"count" => count.to_s, "cursor" => cursor})
      Api::Campaigns.new(res, account_id: account_id)
    end

    def cards_website(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsWebsite
      res = get("/5/accounts/#{account_id}/cards/website.json", {"count" => count.to_s, "cursor" => cursor})
      Api::CardsWebsite.new(res, account_id: account_id)
    end

    def line_items(account_id : String, count : Int32 = 200, cursor : String = "") : Api::LineItems
      res = get("/5/accounts/#{account_id}/line_items.json", {"count" => count.to_s, "cursor" => cursor})
      Api::LineItems.new(res, account_id: account_id)
    end

    def promoted_tweets(account_id : String, count : Int32 = 200, cursor : String = "") : Api::PromotedTweets
      res = get("/5/accounts/#{account_id}/promoted_tweets.json", {"count" => count.to_s, "cursor" => cursor})
      Api::PromotedTweets.new(res, account_id: account_id)
    end

    def targeting_criteria(account_id : String, line_item_ids : Array(String), count : Int32 = 200, cursor : String = "") : Api::TargetingCriteria
      res = get("/5/accounts/#{account_id}/targeting_criteria.json", {"line_item_ids" => line_item_ids.join(","), "count" => count.to_s, "cursor" => cursor})
      Api::TargetingCriteria.new(res, account_id: account_id)
    end
    
    ######################################################################
    ### HTTP methods
    
    def get(path : String, params = {} of String => String) : Response
      execute(Request.new(self, :GET, path, params))
    end

    def post(path : String, form = {} of String => String) : Response
      execute(Request.new(self, :POST, path, params))
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
    Client.new(c.consumer_key, c.consumer_secret, c.token, c.secret)
  end
end
