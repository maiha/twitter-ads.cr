# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaAppStoreCategories < TwitterAds::Response
    enum Store
      GOOGLE_PLAY
      IOS_APP_STORE
    end

    resource_collection TargetingCriteriaAppStoreCategory
  end
end

class TwitterAds::Client
  def targeting_criteria_app_store_categories(q : String? = nil, store : String | Api::TargetingCriteriaAppStoreCategories::Store | Nil = nil) : Api::TargetingCriteriaAppStoreCategories

    # validate store
    if store.is_a?(String)
      if v = Api::TargetingCriteriaAppStoreCategories::Store.parse?(store)
        store = v
      else
        got = store.inspect
        exp = Api::TargetingCriteriaAppStoreCategories::Store.values.map(&.to_s).inspect
        raise ArgumentError.new("Store Error: got #{got}, expected one of #{exp}")
      end
    end
    opts = {
      "q" => q.to_s,
    }
    opts["store"] = store.to_s if store
    res = get("/#{api_version}/targeting_criteria/app_store_categories.json", opts)
    Api::TargetingCriteriaAppStoreCategories.new(res)
  end
end
