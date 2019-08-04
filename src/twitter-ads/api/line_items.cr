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
