class TwitterAds::DraftTweet
  var account_id : String

  JSON.mapping({
    id:         Int64         , # 994791681219231700
    user_id:    String?       , # "756201191646691328"
    card_uri:   String?       , # nil
    text:       String?       , # "hello, world"
    media_ids:  Array(String) , # []
    media_keys: Array(String) , # []
    nullcast:   Bool?         , # true
    id_str:     String?       , # "994791681219231744"
    created_at: String?       , # "2018-05-11T04:09:53Z"
    updated_at: String?       , # "2018-05-11T04:09:53Z"
  })

  def to_pb
    TwitterAds::Proto::DraftTweet.new(
      id: id,
      user_id: user_id,
      card_uri: card_uri,
      text: text,
      media_ids: media_ids,
      media_keys: media_keys,
      nullcast: nullcast,
      id_str: id_str,
      created_at: created_at,
      updated_at: updated_at,

      account_id: account_id,
    )
  end
end
