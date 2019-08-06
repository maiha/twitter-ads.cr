class TwitterAds::TargetingCriteriaLocation
  JSON.mapping({
    name:            String? , # "Los Angeles, Los Angeles CA, CA, USA"
    country_code:    String? , # "US"
    location_type:   String? , # "CITIES"
    targeting_type:  String? , # "LOCATION"
    targeting_value: String? , # "3b77caf94bfc81fe"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaLocation.new(
      name: name,
      country_code: country_code,
      location_type: location_type,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
    )
  end
end
