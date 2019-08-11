class TwitterAds::CardsVideoWebsite
  var account_id : String

  JSON.mapping({
    id:                       String  , # "5a4vf"
    card_type:                String? , # "VIDEO_WEBSITE"
    card_uri:                 String? , # "card://958225772740714496"
    name:                     String? , # "video website card"
    title:                    String? , # "Twitter Developers"
    content_duration_seconds: String? , # "8"
    video_owner_id:           String? , # "756201191646691328"
    video_content_id:         String? , # "958224897255211013"
    video_poster_url:         String? , # "https://pbs.twimg.com/amplify_video_thumb/958224897255211013/img/EnyDab6vErGm4Avd.jpg"
    video_poster_width:       String? , # "16"
    video_poster_height:      String? , # "9"
    video_url:                String? , # "https://video.twimg.com/amplify_video/vmap/958224897255211013.vmap"
    video_width:              String? , # "16"
    video_height:             String? , # "9"
    video_hls_url:            String? , # "https://video.twimg.com/amplify_video/958224897255211013/pl/yngoBofLjm-k5hHe.m3u8"
    website_dest_url:         String? , # "https://developer.twitter.com"
    website_display_url:      String? , # "developer.twitter.com"
    website_shortened_url:    String? , # "https://t.co/zadeUSVD18"
    website_url:              String? , # "https://developer.twitter.com"
    created_at:               String? , # "2018-01-30T06:30:01Z"
    updated_at:               String? , # "2018-01-30T06:30:01Z"
    deleted:                  Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsVideoWebsite.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      title: title,
      content_duration_seconds: content_duration_seconds,
      video_owner_id: video_owner_id,
      video_content_id: video_content_id,
      video_poster_url: video_poster_url,
      video_poster_width: video_poster_width,
      video_poster_height: video_poster_height,
      video_url: video_url,
      video_width: video_width,
      video_height: video_height,
      video_hls_url: video_hls_url,
      website_dest_url: website_dest_url,
      website_display_url: website_display_url,
      website_shortened_url: website_shortened_url,
      website_url: website_url,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
