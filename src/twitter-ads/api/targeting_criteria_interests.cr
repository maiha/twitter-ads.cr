# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaInterests < TwitterAds::Response
    resource_collection TargetingCriteriaInterest
  end
end

class TwitterAds::Client
  def targeting_criteria_interests(q : String? = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaInterests
    opts = {
      "q"     => q.to_s,
      "count" => count.to_s,
      "cursor" => cursor.to_s,
    }
    res = get("/7/targeting_criteria/interests.json", opts)
    Api::TargetingCriteriaInterests.new(res)
  end
end
