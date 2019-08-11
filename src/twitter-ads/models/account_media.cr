class TwitterAds::AccountMedia
  var account_id : String

  JSON.mapping({
    id:            String  , # "3wpx"
    creative_type: String? , # "PREROLL"
    video_id:      String? , # "13_771791717175468032"
    media_url:     String? , # nil
    created_at:    String? , # "2016-09-02T19:27:52Z"
    updated_at:    String? , # "2016-09-02T19:27:52Z"
    deleted:       Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::AccountMedia.new(
      id: id,
      creative_type: creative_type,
      video_id: video_id,
      media_url: media_url,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
