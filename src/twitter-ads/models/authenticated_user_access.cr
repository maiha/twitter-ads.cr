class TwitterAds::AuthenticatedUserAccess
  var account_id : String

  JSON.mapping({
    user_id:     Int64?        , # 2417045708
    permissions: Array(String) , # ["ACCOUNT_ADMIN", "TWEET_COMPOSER"]
  })

  def to_pb
    TwitterAds::Proto::AuthenticatedUserAccess.new(
      user_id: user_id,
      permissions: permissions,
      account_id: account_id?,
    )
  end
end
