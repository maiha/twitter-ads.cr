module TwitterAds::Api
  class PromotedTweets < TwitterAds::Response
    resource_collection TwitterAds::PromotedTweet

    belongs_to account_id : String
  end
end
