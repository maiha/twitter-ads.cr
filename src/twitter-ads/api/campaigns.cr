require "../response"
require "../campaign"

module TwitterAds::Api
  class Campaigns < TwitterAds::Response
    include Enumerable(Campaign)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(Campaign),
      })
    end

    var parser : Parser = Parser.from_json(body!)
    delegate each, to: parser.data

    def next_cursor? : String?
      parser.next_cursor
    end
  end
end
