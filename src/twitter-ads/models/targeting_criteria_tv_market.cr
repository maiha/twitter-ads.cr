class TwitterAds::TargetingCriteriaTvMarket
  JSON.mapping({
    name:         String? , # "France"
    country_code: String? , # "FR"
    locale:       String? , # "fr-FR"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaTvMarket.new(
      name: name,
      country_code: country_code,
      locale: locale,
    )
  end
end
