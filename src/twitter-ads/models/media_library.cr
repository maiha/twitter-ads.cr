class TwitterAds::MediaLibrary
  var account_id : String

  JSON.mapping({
    media_id:       String? , # "908573900237180900"
    media_type:     String? , # "IMAGE"
    media_status:   String? , # "TRANSCODE_COMPLETED"
    media_category: String? , # "TWEET_IMAGE"
    media_key:      String? , # "3_908573900237180928"
    name:           String? , # nil
    file_name:      String? , # "coffee https://t.co/4tcPU9XUon"
    media_url:      String? , # "https://pbs.twimg.com/media/DJvnJf_UEAAXnzC.jpg"
    tweeted:        Bool?   , # true
    created_at:     String? , # "2017-09-15T06:11:12Z"
    updated_at:     String? , # "2017-11-16T06:00:01Z"
    deleted:        Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::MediaLibrary.new(
      media_id: media_id,
      media_type: media_type,
      media_status: media_status,
      media_category: media_category,
      media_key: media_key,
      name: name,
      file_name: file_name,
      media_url: media_url,
      tweeted: tweeted,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
