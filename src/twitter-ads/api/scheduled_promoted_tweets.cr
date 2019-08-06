module TwitterAds::Api
  class ScheduledPromotedTweets < TwitterAds::Response
    resource_collection ScheduledPromotedTweet

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def scheduled_promoted_tweets(account_id : String, count : Int32 = 200, cursor : String = "") : Api::ScheduledPromotedTweets
    res = get("/5/accounts/#{account_id}/scheduled_promoted_tweets.json", {"count" => count.to_s, "cursor" => cursor})
    Api::ScheduledPromotedTweets.new(res, account_id: account_id)
  end
end
