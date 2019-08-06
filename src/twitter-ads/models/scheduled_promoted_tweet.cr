class TwitterAds::ScheduledPromotedTweet
  JSON.mapping({
    id:                 String  , # "1xboq"
    tweet_id:           String? , # "870369382207070208"
    scheduled_tweet_id: String? , # "870366669373194240"
    line_item_id:       String? , # "8xdpe"
    created_at:         String? , # "2017-06-01T19:53:32Z"
    updated_at:         String? , # "2017-06-01T20:00:06Z"
    deleted:            Bool?   , # false
    account_id:         String? , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::ScheduledPromotedTweet.new(
      id: id,
      tweet_id: tweet_id,
      scheduled_tweet_id: scheduled_tweet_id,
      line_item_id: line_item_id,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
