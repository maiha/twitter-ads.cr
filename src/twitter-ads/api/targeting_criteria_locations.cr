# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaLocations < TwitterAds::Response
    resource_collection TargetingCriteriaLocation
  end
end

class TwitterAds::Client
  def targeting_criteria_locations(country_code : String? = nil, location_type : String? = nil, q : String? = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaLocations
    res = get("/#{api_version}/targeting_criteria/locations#{api_suffix}", {"country_code" => country_code.to_s, "location_type" => location_type.to_s, "q" => q.to_s, "count" => count.to_s, "cursor" => cursor})
    Api::TargetingCriteriaLocations.new(res)
  end
end
