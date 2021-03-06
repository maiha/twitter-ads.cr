module TwitterAds::Api
  class PromotedTweets < TwitterAds::Response
    resource_collection PromotedTweet

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def promoted_tweets(account_id : String, count : Int32 = 200, cursor : String = "") : Api::PromotedTweets
    res = get("/#{api_version}/accounts/#{account_id}/promoted_tweets#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::PromotedTweets.new(res, account_id: account_id)
  end
end
