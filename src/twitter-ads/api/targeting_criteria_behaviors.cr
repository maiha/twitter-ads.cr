# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaBehaviors < TwitterAds::Response
    resource_collection TargetingCriteriaBehavior
  end
end

class TwitterAds::Client
  def targeting_criteria_behaviors(behavior_ids : String | Array(String) | Nil = nil, country_code : String? = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaBehaviors

    behavior_ids = behavior_ids.map(&.to_s).join(",") if behavior_ids.is_a?(Array)

    opts = {
      "behavior_ids" => behavior_ids.to_s,
      "country_code" => country_code.to_s,
      "count"        => count.to_s,
      "cursor"       => cursor.to_s,
    }
    res = get("/7/targeting_criteria/behaviors.json", opts)
    Api::TargetingCriteriaBehaviors.new(res)
  end
end
