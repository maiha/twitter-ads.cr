class TwitterAds::TargetingCriteriaDevice
  JSON.mapping({
    name:            String? , # "iPhone 3GS"
    manufacturer:    String? , # "Apple"
    platform:        String? , # "iOS"
    targeting_value: String? , # "1q"
    targeting_type:  String? , # "DEVICE"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaDevice.new(
      name: name,
      manufacturer: manufacturer,
      platform: platform,
      targeting_value: targeting_value,
      targeting_type: targeting_type,
    )
  end
end
