class TwitterAds::CardsImageAppDownload
  var account_id : String

  JSON.mapping({
    app_cta:              String? , # "INSTALL"
    card_type:            String? , # "IMAGE_APP_DOWNLOAD"
    card_uri:             String? , # "card://957050688416112640"
    country_code:         String? , # "US"
    created_at:           String? , # "2018-01-27T00:40:39Z"
    deleted:              Bool?   , # false
    googleplay_app_id:    String? , # "com.twitter.android"
    googleplay_deep_link: String? , # "com.twitter.android"
    id:                   String  , # "59wiu"
    image_display_height: String? , # "400"
    image_display_width:  String? , # "800"
    ipad_app_id:          String? , # "123456"
    ipad_deep_link:       String? , # "123456"
    iphone_app_id:        String? , # "123456"
    iphone_deep_link:     String? , # "com.twitter.android"
    media_key:            String? , # "3_917438348871983104"
    media_url:            String? , # "https://pbs.twimg.com/media/DOxqHTWV4AAL7Bk.jpg"
    name:                 String? , # "image app download card"
    updated_at:           String? , # "2018-01-27T00:40:39Z"
  })

  def to_pb
    TwitterAds::Proto::CardsImageAppDownload.new(
      app_cta: app_cta,
      card_type: card_type,
      card_uri: card_uri,
      country_code: country_code,
      created_at: created_at,
      deleted: deleted,
      googleplay_app_id: googleplay_app_id,
      googleplay_deep_link: googleplay_deep_link,
      id: id,
      image_display_height: image_display_height,
      image_display_width: image_display_width,
      ipad_app_id: ipad_app_id,
      ipad_deep_link: ipad_deep_link,
      iphone_app_id: iphone_app_id,
      iphone_deep_link: iphone_deep_link,
      media_key: media_key,
      media_url: media_url,
      name: name,
      updated_at: updated_at,
      account_id: account_id,
    )
  end
end
