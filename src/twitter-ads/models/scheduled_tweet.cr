class TwitterAds::ScheduledTweet
  var account_id : String

  JSON.mapping({
    id:               Int64         , # 875828692081037300
    card_uri:         String?       , # nil
    scheduled_status: String?       , # "SUCCESS"
    scheduled_at:     String?       , # "2017-06-18T22:00:00Z"
    completed_at:     String?       , # "2017-06-18T22:00:05Z"
    text:             String?       , # "where you want to be"
    media_ids:        Array(String) , # ["875828691770548224"]
    media_keys:       Array(String) , # []
    nullcast:         Bool?         , # true
    id_str:           String?       , # "875828692081037312"
    tweet_id:         String?       , # "876560168963645440"
    user_id:          String?       , # "756201191646691328"
    created_at:       String?       , # "2017-06-16T21:33:27Z"
    updated_at:       String?       , # "2017-06-19T18:02:20Z"
  })

  def to_pb
    TwitterAds::Proto::ScheduledTweet.new(
      id: id,
      card_uri: card_uri,
      scheduled_status: scheduled_status,
      scheduled_at: scheduled_at,
      completed_at: completed_at,
      text: text,
      media_ids: media_ids,
      media_keys: media_keys,
      nullcast: nullcast,
      id_str: id_str,
      tweet_id: tweet_id,
      user_id: user_id,
      created_at: created_at,
      updated_at: updated_at,

      account_id: account_id,
    )
  end
end
