module TwitterAds::Api
  class LineItems < TwitterAds::Response
    resource_collection TwitterAds::LineItem

    belongs_to account_id : String
  end
end
