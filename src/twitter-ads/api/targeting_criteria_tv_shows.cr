# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaTvShows < TwitterAds::Response
    resource_collection TargetingCriteriaTvShow
  end
end

class TwitterAds::Client
  def targeting_criteria_tv_shows(tv_market_locale : String, q : String? = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaTvShows
    opts = {
      "tv_market_locale" => tv_market_locale,
      "q"                => q.to_s,
      "count"            => count.to_s,
      "cursor"           => cursor.to_s,
    }
    res = get("/#{api_version}/targeting_criteria/tv_shows.json", opts)
    Api::TargetingCriteriaTvShows.new(res)
  end
end
