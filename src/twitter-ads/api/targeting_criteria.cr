module TwitterAds::Api
  class TargetingCriteria < TwitterAds::Response
    resource_collection TwitterAds::TargetingCriteria

    belongs_to account_id : String
  end
end
