require "../response"
require "../cards_website"

module TwitterAds::Api
  class CardsWebsite < TwitterAds::Response
    include Enumerable(TwitterAds::CardsWebsite)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(TwitterAds::CardsWebsite),
      })
    end

    var parser : Parser = Parser.from_json(body!)
    delegate each, to: parser.data

    def next_cursor? : String?
      parser.next_cursor
    end
  end
end

class TwitterAds::Client
  def cards_website(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsWebsite
    res = get("/5/accounts/#{account_id}/cards/website.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsWebsite.new(res)
  end
end
