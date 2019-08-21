# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaNetworkOperators < TwitterAds::Response
    resource_collection TargetingCriteriaNetworkOperator
  end
end

class TwitterAds::Client
  def targeting_criteria_network_operators(country_code : String? = nil, q : String? = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaNetworkOperators
    opts = {
      "country_code" => country_code.to_s,
      "q"            => q.to_s,
      "count"        => count.to_s,
      "cursor"       => cursor.to_s,
    }
    res = get("/5/targeting_criteria/network_operators.json", opts)
    Api::TargetingCriteriaNetworkOperators.new(res)
  end
end
