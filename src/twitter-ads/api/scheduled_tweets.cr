module TwitterAds::Api
  class ScheduledTweets < TwitterAds::Response
    resource_collection ScheduledTweet

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def scheduled_tweets(account_id : String, count : Int32 = 200, cursor : String = "") : Api::ScheduledTweets
    res = get("/#{api_version}/accounts/#{account_id}/scheduled_tweets#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::ScheduledTweets.new(res, account_id: account_id)
  end
end
