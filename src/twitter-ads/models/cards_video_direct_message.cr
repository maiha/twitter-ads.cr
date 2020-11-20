class TwitterAds::CardsVideoDirectMessage
  var account_id : String

  JSON.mapping({
    card_type:                    String? , # "VIDEO_DIRECT_MESSAGE"
    card_uri:                     String? , # "card://958403939703054336"
    created_at:                   String? , # "2018-01-30T18:18:00Z"
    deleted:                      Bool?   , # false
    first_cta:                    String? , # "DM me"
    first_cta_welcome_message_id: String? , # "865707372148174852"
    id:                           String  , # "5a8av"
    media_key:                    String? , # "13_953023103654797312"
    media_url:                    String? , # "https://video.twimg.com/amplify_video/vmap/953023103654797312.vmap"
    name:                         String? , # "video direct message card"
    poster_media_url:             String? , # "https://pbs.twimg.com/amplify_video_thumb/953023103654797312/img/56BNaul3VVrxf9Hw.jpg"
    recipient_user_id:            String? , # "756201191646691328"
    updated_at:                   String? , # "2018-01-30T18:18:00Z"
    video_owner_id:               String? , # "756201191646691328"
  })

  def to_pb
    TwitterAds::Proto::CardsVideoDirectMessage.new(
      card_type: card_type,
      card_uri: card_uri,
      created_at: created_at,
      deleted: deleted,
      first_cta: first_cta,
      first_cta_welcome_message_id: first_cta_welcome_message_id,
      id: id,
      media_key: media_key,
      media_url: media_url,
      name: name,
      poster_media_url: poster_media_url,
      recipient_user_id: recipient_user_id,
      updated_at: updated_at,
      video_owner_id: video_owner_id,
      account_id: account_id,
    )
  end
end
