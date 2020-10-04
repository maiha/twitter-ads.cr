# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaPlatforms < TwitterAds::Response
    resource_collection TargetingCriteriaPlatform
  end
end

class TwitterAds::Client
  def targeting_criteria_platforms(lang : String? = nil, q : String? = nil, count : Int32 = 200) : Api::TargetingCriteriaPlatforms
    opts = {
      "lang"  => lang.to_s,
      "q"     => q.to_s,
      "count" => count.to_s,
    }
    res = get("/#{api_version}/targeting_criteria/platforms#{api_suffix}", opts)
    Api::TargetingCriteriaPlatforms.new(res)
  end
end
