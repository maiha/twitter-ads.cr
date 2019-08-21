class TwitterAds::TargetingCriteriaAppStoreCategory
  JSON.mapping({
    name:            String? , # "Games: Music"
    targeting_type:  String? , # "APP_STORE_CATEGORY"
    targeting_value: String? , # "qouq"
    os_type:         String? , # "IOS"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaAppStoreCategory.new(
      name: name,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
      os_type: os_type,
    )
  end
end
