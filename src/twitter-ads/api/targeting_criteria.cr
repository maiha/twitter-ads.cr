require "../response"
require "../targeting_criteria"

module TwitterAds::Api
  class TargetingCriteria < TwitterAds::Response
    include Enumerable(TwitterAds::TargetingCriteria)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(TwitterAds::TargetingCriteria),
      })
    end

    var parser : Parser = Parser.from_json(body!)
    delegate each, to: parser.data

    def next_cursor? : String?
      parser.next_cursor
    end
  end
end
