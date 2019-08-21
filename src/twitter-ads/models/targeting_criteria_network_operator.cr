class TwitterAds::TargetingCriteriaNetworkOperator
  JSON.mapping({
    name:            String? , # "Advantage"
    targeting_type:  String? , # "NETWORK_OPERATOR"
    targeting_value: String? , # "2l"
    country_code:    String? , # "US"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaNetworkOperator.new(
      name: name,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
      country_code: country_code,
    )
  end
end
