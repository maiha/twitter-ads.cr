class TwitterAds::TargetingCriteriaPlatformVersion
  JSON.mapping({
    name:            String? , # "Ice Cream Sandwich"
    number:          String? , # "4.0"
    platform:        String? , # "Android"
    targeting_type:  String? , # "PLATFORM_VERSION"
    targeting_value: String? , # "17"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaPlatformVersion.new(
      name: name,
      number: number,
      platform: platform,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
    )
  end
end
