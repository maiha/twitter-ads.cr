class TwitterAds::PromotedAccount
  JSON.mapping({
    id:              String  , # "19pl2"
    user_id:         String? , # "756201191646691328"
    line_item_id:    String? , # "9bpb2"
    approval_status: String? , # "ACCEPTED"
    entity_status:   String? , # "ACTIVE"
    created_at:      String? , # "2017-07-05T05:54:13Z"
    updated_at:      String? , # "2017-07-05T05:54:13Z"
    deleted:         Bool?   , # false
    account_id:      String? , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::PromotedAccount.new(
      id: id,
      user_id: user_id,
      line_item_id: line_item_id,
      approval_status: approval_status,
      entity_status: entity_status,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
