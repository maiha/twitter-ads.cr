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

class TwitterAds::Client
  def targeting_criteria(account_id : String, line_item_ids : Array(String), count : Int32 = 200, cursor : String = "") : Api::TargetingCriteria
    res = get("/5/accounts/#{account_id}/targeting_criteria.json", {"line_item_ids" => line_item_ids.join(","), "count" => count.to_s, "cursor" => cursor})
    Api::TargetingCriteria.new(res)
  end
end
