# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/scheduled-promoted-tweets

module TwitterAds::Api
  class ScheduledPromotedTweets < TwitterAds::Response
    resource_collection ScheduledPromotedTweet

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def scheduled_promoted_tweets(account_id : String, with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::ScheduledPromotedTweets
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/6/accounts/#{account_id}/scheduled_promoted_tweets.json", opts)
    Api::ScheduledPromotedTweets.new(res, account_id: account_id)
  end
end
