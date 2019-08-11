class TwitterAds::PrerollCallToAction
  var account_id : String

  JSON.mapping({
    id:                 String  , # "8f0"
    line_item_id:       String? , # "8v53k"
    call_to_action:     String? , # "VISIT_SITE"
    call_to_action_url: String? , # "https://www.twitter.com"
    created_at:         String? , # "2017-07-07T19:28:40Z"
    updated_at:         String? , # "2017-07-07T19:28:40Z"
    deleted:            Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::PrerollCallToAction.new(
      id: id,
      line_item_id: line_item_id,
      call_to_action: call_to_action,
      call_to_action_url: call_to_action_url,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
