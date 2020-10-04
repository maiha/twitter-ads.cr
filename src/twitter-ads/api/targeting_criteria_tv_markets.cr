# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaTvMarkets < TwitterAds::Response
    resource_collection TargetingCriteriaTvMarket
  end
end

class TwitterAds::Client
  def targeting_criteria_tv_markets : Api::TargetingCriteriaTvMarkets
    res = get("/#{api_version}/targeting_criteria/tv_markets#{api_suffix}")
    Api::TargetingCriteriaTvMarkets.new(res)
  end
end
