# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaLanguages < TwitterAds::Response
    resource_collection TargetingCriteriaLanguage
  end
end

class TwitterAds::Client
  def targeting_criteria_languages(q : String? = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaLanguages
    opts = {
      "q"     => q.to_s,
      "count" => count.to_s,
      "cursor" => cursor.to_s,
    }
    res = get("/6/targeting_criteria/languages.json", opts)
    Api::TargetingCriteriaLanguages.new(res)
  end
end
