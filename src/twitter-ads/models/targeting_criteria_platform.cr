class TwitterAds::TargetingCriteriaPlatform
  JSON.mapping({
    name:            String? , # "iOS"
    targeting_type:  String? , # "PLATFORM"
    targeting_value: String? , # "0"
  })

  def to_pb(lang : String? = nil)
    TwitterAds::Proto::TargetingCriteriaPlatform.new(
      name: name,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
      lang: lang,
    )
  end
end
