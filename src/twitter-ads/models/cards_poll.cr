class TwitterAds::CardsPoll
  var account_id : String

  JSON.mapping({
    id:                       String  , # "57i77"
    card_type:                String? , # "VIDEO_POLLS"
    card_uri:                 String? , # "card://950590850777497601"
    name:                     String? , # "best coast poll"
    first_choice:             String? , # "East"
    second_choice:            String? , # "West"
    content_duration_seconds: String? , # "8"
    duration_in_minutes:      String? , # "10080"
    video_width:              String? , # "16"
    video_height:             String? , # "9"
    video_url:                String? , # "https://video.twimg.com/amplify_video/vmap/950589518557540353.vmap"
    video_hls_url:            String? , # "https://video.twimg.com/amplify_video/950589518557540353/vid/1280x720/BRkAhPxFoBREIaFA.mp4"
    video_poster_width:       String? , # "16"
    video_poster_height:      String? , # "9"
    video_poster_url:         String? , # "https://pbs.twimg.com/amplify_video_thumb/950589518557540353/img/nZ1vX_MXYqmvbsXP.jpg"
    start_time:               String? , # "2018-01-09T04:51:34Z"
    end_time:                 String? , # "2018-01-16T04:51:34Z"
    created_at:               String? , # "2018-01-09T04:51:34Z"
    updated_at:               String? , # "2018-01-09T04:51:34Z"
    deleted:                  Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsPoll.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      first_choice: first_choice,
      second_choice: second_choice,
      content_duration_seconds: content_duration_seconds,
      duration_in_minutes: duration_in_minutes,
      video_width: video_width,
      video_height: video_height,
      video_url: video_url,
      video_hls_url: video_hls_url,
      video_poster_width: video_poster_width,
      video_poster_height: video_poster_height,
      video_poster_url: video_poster_url,
      start_time: start_time,
      end_time: end_time,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
