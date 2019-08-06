class TwitterAds::UserSetting
  JSON.mapping({
    notification_email:      String?       , # "user@domain.com"
    contact_phone:           String?       , # ""
    contact_phone_extension: String?       , # ""
    subscribed_email_types:  Array(String) , # ["ACCOUNT_PERFORMANCE", "PERFORMANCE_IMPROVEMENT"]
    account_id:              String?       , # "18ce544yq30"
    user_id:                 Int64?        , # 756201191646691328
  })

  def to_pb
    TwitterAds::Proto::UserSetting.new(
      notification_email: notification_email,
      contact_phone: contact_phone,
      contact_phone_extension: contact_phone_extension,
      subscribed_email_types: subscribed_email_types,
      account_id: account_id,
      user_id: user_id,
    )
  end
end
