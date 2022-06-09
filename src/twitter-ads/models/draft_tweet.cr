class TwitterAds::DraftTweet
  var account_id : String

  JSON.mapping({
    name:       String?       , # nil
    text:       String?       , # "hello, world"
    user_id:    String?       , # "756201191646691328"
    id:         String        , # "994791681219231744"
    nullcast:   Bool?         , # true
    created_at: String?       , # "2018-05-11T04:09:53Z"
    card_uri:   String?       , # ""
    updated_at: String?       , # "2018-05-11T04:09:53Z"
    media_keys: Array(String) , # []
  })

  def to_pb
    TwitterAds::Proto::DraftTweet.new(
      name: name,
      text: text,
      user_id: user_id,
      id: id,
      nullcast: nullcast,
      created_at: created_at,
      card_uri: card_uri,
      updated_at: updated_at,
      media_keys: media_keys,
      account_id: account_id,
    )
  end
end
