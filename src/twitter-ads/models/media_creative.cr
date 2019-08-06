class TwitterAds::MediaCreative
  JSON.mapping({
    id:               String  , # "1bzq3"
    line_item_id:     String? , # "8v7jo"
    account_media_id: String? , # "10miy"
    approval_status:  String? , # "ACCEPTED"
    serving_status:   String? , # "ACTIVE"
    landing_url:      String? , # nil
    created_at:       String? , # "2017-07-05T06:00:42Z"
    updated_at:       String? , # "2017-07-05T06:00:43Z"
    deleted:          Bool?   , # false
    account_id:       String? , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::MediaCreative.new(
      id: id,
      line_item_id: line_item_id,
      account_media_id: account_media_id,
      approval_status: approval_status,
      serving_status: serving_status,
      landing_url: landing_url,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
