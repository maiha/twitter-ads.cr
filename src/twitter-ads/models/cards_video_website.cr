class TwitterAds::CardsVideoWebsite
  var account_id : String

  JSON.mapping({
    card_type:                String? , # "VIDEO_WEBSITE"
    card_uri:                 String? , # "card://958225772740714496"
    content_duration_seconds: String? , # "8"
    created_at:               String? , # "2018-01-30T06:30:01Z"
    deleted:                  Bool?   , # false
    id:                       String  , # "5a4vf"
    media_key:                String? , # "13_958224897255211013"
    media_url:                String? , # "https://video.twimg.com/amplify_video/vmap/958224897255211013.vmap"
    name:                     String? , # "video website card"
    poster_media_url:         String? , # "https://pbs.twimg.com/amplify_video_thumb/958224897255211013/img/EnyDab6vErGm4Avd.jpg"
    title:                    String? , # "Twitter Developers"
    updated_at:               String? , # "2018-01-30T06:30:01Z"
    video_height:             String? , # "9"
    video_owner_id:           String? , # "756201191646691328"
    video_poster_height:      String? , # "9"
    video_poster_width:       String? , # "16"
    video_width:              String? , # "16"
    website_dest_url:         String? , # "https://developer.twitter.com"
    website_display_url:      String? , # "developer.twitter.com"
    website_shortened_url:    String? , # "https://t.co/zadeUSVD18"
    website_url:              String? , # "https://developer.twitter.com"
  })

  def to_pb
    TwitterAds::Proto::CardsVideoWebsite.new(
      card_type: card_type,
      card_uri: card_uri,
      content_duration_seconds: content_duration_seconds,
      created_at: created_at,
      deleted: deleted,
      id: id,
      media_key: media_key,
      media_url: media_url,
      name: name,
      poster_media_url: poster_media_url,
      title: title,
      updated_at: updated_at,
      video_height: video_height,
      video_owner_id: video_owner_id,
      video_poster_height: video_poster_height,
      video_poster_width: video_poster_width,
      video_width: video_width,
      website_dest_url: website_dest_url,
      website_display_url: website_display_url,
      website_shortened_url: website_shortened_url,
      website_url: website_url,
      account_id: account_id,
    )
  end
end
