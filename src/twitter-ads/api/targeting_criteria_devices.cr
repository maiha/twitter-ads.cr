# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaDevices < TwitterAds::Response
    resource_collection TargetingCriteriaDevice
  end
end

class TwitterAds::Client
  def targeting_criteria_devices(q : String? = nil, count : Int32 = 200) : Api::TargetingCriteriaDevices
    opts = {
      "q"     => q.to_s,
      "count" => count.to_s,
    }
    res = get("/#{api_version}/targeting_criteria/devices#{api_suffix}", opts)
    Api::TargetingCriteriaDevices.new(res)
  end
end
