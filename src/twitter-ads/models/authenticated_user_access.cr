class TwitterAds::AuthenticatedUserAccess
  JSON.mapping({
    user_id:     Int64?        , # 2417045708
    permissions: Array(String) , # ["ACCOUNT_ADMIN", "TWEET_COMPOSER"]
    account_id:  String?       , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::AuthenticatedUserAccess.new(
      user_id: user_id,
      permissions: permissions,
      account_id: account_id,
    )
  end
end
