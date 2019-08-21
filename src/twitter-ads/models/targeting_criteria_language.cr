class TwitterAds::TargetingCriteriaLanguage
  JSON.mapping({
    name:            String? , # "English"
    targeting_type:  String? , # "LANGUAGE"
    targeting_value: String? , # "en"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaLanguage.new(
      name: name,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
    )
  end
end
