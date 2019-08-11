class TwitterAds::CardsAll
  var account_id : String

  JSON.mapping({
    id:                   String  , # "692xn"
    card_type:            String? , # "IMAGE_APP_DOWNLOAD"
    card_uri:             String? , # "card://1044294149527166979"
    name:                 String? , # "Twitter App"
    app_cta:              String? , # "INSTALL"
    country_code:         String? , # "US"
    googleplay_app_id:    String? , # "com.twitter.android"
    image_display_width:  String? , # "1600"
    image_display_height: String? , # "836"
    wide_app_image:       String? , # "https://pbs.twimg.com/media/Dc263l9VwAAAeEH.jpg"
    created_at:           String? , # "2018-09-24T18:35:01Z"
    updated_at:           String? , # "2018-09-24T18:35:01Z"
    deleted:              Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsAll.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      app_cta: app_cta,
      country_code: country_code,
      googleplay_app_id: googleplay_app_id,
      image_display_width: image_display_width,
      image_display_height: image_display_height,
      wide_app_image: wide_app_image,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
