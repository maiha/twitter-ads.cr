# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaPlatformVersions < TwitterAds::Response
    resource_collection TargetingCriteriaPlatformVersion
  end
end

class TwitterAds::Client
  def targeting_criteria_platform_versions(q : String? = nil) : Api::TargetingCriteriaPlatformVersions
    opts = {
      "q" => q.to_s,
    }
    res = get("/5/targeting_criteria/platform_versions.json", opts)
    Api::TargetingCriteriaPlatformVersions.new(res)
  end
end
