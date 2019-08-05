module TwitterAds::Api
  class Campaigns < TwitterAds::Response
    resource_collection Campaign

    belongs_to account_id : String
  end
end
