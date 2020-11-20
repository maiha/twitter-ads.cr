class TwitterAds::CardsVideoAppDownload
  var account_id : String

  JSON.mapping({
    card_uri:             String? , # "card://958233417929261056"
    card_type:            String? , # "VIDEO_APP_DOWNLOAD"
    created_at:           String? , # "2018-01-30T07:00:24Z"
    deleted:              Bool?   , # false
    id:                   String  , # "5a4z3"
    updated_at:           String? , # "2018-01-30T07:00:24Z"
    video_owner_id:       String? , # "756201191646691328"
    poster_media_url:     String? , # "https://pbs.twimg.com/amplify_video_thumb/958231855240589313/img/rjhswYG084qYYgF6.jpg"
    media_url:            String? , # "https://video.twimg.com/amplify_video/vmap/958231855240589313.vmap"
    country_code:         String? , # "US"
    app_cta:              String? , # "INSTALL"
    ipad_app_id:          String? , # "123456"
    ipad_deep_link:       String? , # "123456"
    iphone_app_id:        String? , # "123456"
    iphone_deep_link:     String? , # "com.twitter.android"
    googleplay_app_id:    String? , # "com.twitter.android"
    googleplay_deep_link: String? , # "com.twitter.android"
    name:                 String? , # "video app download"
    media_key:            String? , # "13_958231855240589313"
  })

  def to_pb
    TwitterAds::Proto::CardsVideoAppDownload.new(
      card_uri: card_uri,
      card_type: card_type,
      created_at: created_at,
      deleted: deleted,
      id: id,
      updated_at: updated_at,
      video_owner_id: video_owner_id,
      poster_media_url: poster_media_url,
      media_url: media_url,
      country_code: country_code,
      app_cta: app_cta,
      ipad_app_id: ipad_app_id,
      ipad_deep_link: ipad_deep_link,
      iphone_app_id: iphone_app_id,
      iphone_deep_link: iphone_deep_link,
      googleplay_app_id: googleplay_app_id,
      googleplay_deep_link: googleplay_deep_link,
      name: name,
      media_key: media_key,
      account_id: account_id,
    )
  end
end
