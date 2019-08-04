require "../response"
require "../account"

module TwitterAds::Api
  class Accounts < TwitterAds::Response
    include Enumerable(Account)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(Account),
      })
    end

    var parser : Parser = Parser.from_json(body!)

    delegate each, to: parser.data

    def next_cursor? : String?
      parser.next_cursor
    end
  end
end
