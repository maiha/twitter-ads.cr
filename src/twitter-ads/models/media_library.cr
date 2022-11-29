class TwitterAds::MediaLibrary
  var account_id : String

  JSON.mapping({
    tweeted:          Bool?   , # true
    duration:         Int64?  , # 39973
    name:             String? , # nil
    file_name:        String? , # "buildings https://t.co/xFdzrHM5QG"
    description:      String? , # nil
    media_url:        String? , # "https://video.twimg.com/amplify_video/909110614026444802/vid/1280x720/mfahmfkKVjjk1nGm.mp4"
    poster_media_url: String? , # "https://pbs.twimg.com/amplify_video_thumb/909110614026444802/img/QZUNoaiCia0UFNrw.jpg"
    poster_media_key: String? , # "3_909110614026444802"
    media_key:        String? , # "13_909110614026444802"
    created_at:       String? , # "2017-09-16T17:43:55Z"
    media_status:     String? , # "TRANSCODE_COMPLETED"
    title:            String? , # "buildings"
    media_type:       String? , # "VIDEO"
    aspect_ratio:     String? , # "16:9"
    updated_at:       String? , # "2017-09-27T13:04:00Z"
    deleted:          Bool?   , # false
  })

  def to_pb
    Proto::MediaLibrary.new(
      tweeted: tweeted,
      duration: duration,
      name: name,
      file_name: file_name,
      description: description,
      media_url: media_url,
      poster_media_url: poster_media_url,
      poster_media_key: poster_media_key,
      media_key: media_key,
      created_at: created_at,
      media_status: media_status,
      title: title,
      media_type: media_type,
      aspect_ratio: aspect_ratio,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
