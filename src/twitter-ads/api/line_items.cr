require "../response"
require "../cards_website"

module TwitterAds::Api
  class LineItems < TwitterAds::Response
    include Enumerable(TwitterAds::LineItem)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(TwitterAds::LineItem),
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
  def line_items(account_id : String, count : Int32 = 200, cursor : String = "") : Api::LineItems
    res = get("/5/accounts/#{account_id}/line_items.json", {"count" => count.to_s, "cursor" => cursor})
    Api::LineItems.new(res)
  end
end
