class TwitterAds::PromotableUser
  JSON.mapping({
    id:                   String  , # "l310s"
    user_id:              String? , # "756201191646691328"
    promotable_user_type: String? , # "FULL"
    created_at:           String? , # "2016-07-21T22:42:09Z"
    updated_at:           String? , # "2016-07-21T22:42:09Z"
    deleted:              Bool?   , # false
    account_id:           String? , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::PromotableUser.new(
      id: id,
      user_id: user_id,
      promotable_user_type: promotable_user_type,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
