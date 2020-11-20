class TwitterAds::CardsPoll
  var account_id : String

  JSON.mapping({
    card_type:                String? , # "VIDEO_POLLS"
    card_uri:                 String? , # "card://950590850777497601"
    content_duration_seconds: String? , # "8"
    created_at:               String? , # "2018-01-09T04:51:34Z"
    deleted:                  Bool?   , # false
    duration_in_minutes:      String? , # "10080"
    end_time:                 String? , # "2018-01-16T04:51:34Z"
    first_choice:             String? , # "East"
    fourth_choice:            String? , # ""
    id:                       String  , # "57i77"
    image_display_height:     String? , # "720"
    image_display_width:      String? , # "800"
    media_key:                String? , # "3_917438348871983104"
    media_url:                String? , # "https://video.twimg.com/amplify_video/vmap/950589518557540353.vmap"
    name:                     String? , # "best coast poll"
    poster_media_url:         String? , # "https://pbs.twimg.com/amplify_video_thumb/950589518557540353/img/nZ1vX_MXYqmvbsXP.jpg"
    second_choice:            String? , # "West"
    start_time:               String? , # "2018-01-09T04:51:34Z"
    third_choice:             String? , # ""
    updated_at:               String? , # "2018-01-09T04:51:34Z"
    video_height:             String? , # "9"
    video_hls_url:            String? , # "https://video.twimg.com/amplify_video/950589518557540353/vid/1280x720/BRkAhPxFoBREIaFA.mp4"
    video_poster_height:      String? , # "9"
    video_poster_width:       String? , # "16"
    video_width:              String? , # "16"
  })

  def to_pb
    TwitterAds::Proto::CardsPoll.new(
      card_type: card_type,
      card_uri: card_uri,
      content_duration_seconds: content_duration_seconds,
      created_at: created_at,
      deleted: deleted,
      duration_in_minutes: duration_in_minutes,
      end_time: end_time,
      first_choice: first_choice,
      fourth_choice: fourth_choice,
      id: id,
      image_display_height: image_display_height,
      image_display_width: image_display_width,
      media_key: media_key,
      media_url: media_url,
      name: name,
      poster_media_url: poster_media_url,
      second_choice: second_choice,
      start_time: start_time,
      third_choice: third_choice,
      updated_at: updated_at,
      video_height: video_height,
      video_hls_url: video_hls_url,
      video_poster_height: video_poster_height,
      video_poster_width: video_poster_width,
      video_width: video_width,
      account_id: account_id,
    )
  end
end
