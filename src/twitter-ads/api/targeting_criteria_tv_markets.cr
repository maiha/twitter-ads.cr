# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaTvMarkets < TwitterAds::Response
    resource_collection TargetingCriteriaTvMarket
  end
end

class TwitterAds::Client
  def targeting_criteria_tv_markets : Api::TargetingCriteriaTvMarkets
    res = get("/6/targeting_criteria/tv_markets.json")
    Api::TargetingCriteriaTvMarkets.new(res)
  end
end
