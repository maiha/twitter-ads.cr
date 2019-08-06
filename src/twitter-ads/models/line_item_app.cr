class TwitterAds::LineItemApp
  JSON.mapping({
    id:                   String  , # "1eegy"
    line_item_id:         String? , # "6syda"
    app_store_identifier: String? , # "com.twitter.android"
    os_type:              String? , # "Android"
    created_at:           String? , # "2016-11-18T18:20:18Z"
    updated_at:           String? , # "2016-11-18T18:20:18Z"
    deleted:              Bool?   , # false
    account_id:           String? , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::LineItemApp.new(
      id: id,
      line_item_id: line_item_id,
      app_store_identifier: app_store_identifier,
      os_type: os_type,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
