class TwitterAds::CardsVideoDirectMessage
  var account_id : String

  JSON.mapping({
    id:                           String  , # "5a8av"
    card_type:                    String? , # "VIDEO_DIRECT_MESSAGE"
    card_uri:                     String? , # "card://958403939703054336"
    name:                         String? , # "video direct message card"
    recipient_user_id:            String? , # "756201191646691328"
    first_cta:                    String? , # "DM me"
    first_cta_welcome_message_id: String? , # "865707372148174852"
    video_url:                    String? , # "https://video.twimg.com/amplify_video/vmap/953023103654797312.vmap"
    video_owner_id:               String? , # "756201191646691328"
    video_content_id:             String? , # "953023103654797312"
    video_hls_url:                String? , # "https://video.twimg.com/amplify_video/953023103654797312/pl/LaOEWcPzHpWoj_Iv.m3u8"
    video_poster_url:             String? , # "https://pbs.twimg.com/amplify_video_thumb/953023103654797312/img/56BNaul3VVrxf9Hw.jpg"
    created_at:                   String? , # "2018-01-30T18:18:00Z"
    updated_at:                   String? , # "2018-01-30T18:18:00Z"
    deleted:                      Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsVideoDirectMessage.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      recipient_user_id: recipient_user_id,
      first_cta: first_cta,
      first_cta_welcome_message_id: first_cta_welcome_message_id,
      video_url: video_url,
      video_owner_id: video_owner_id,
      video_content_id: video_content_id,
      video_hls_url: video_hls_url,
      video_poster_url: video_poster_url,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
