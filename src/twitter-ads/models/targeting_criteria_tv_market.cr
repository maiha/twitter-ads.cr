class TwitterAds::TargetingCriteriaTvMarket
  JSON.mapping({
    id:           String  , # "6"
    name:         String? , # "France"
    country_code: String? , # "FR"
    locale:       String? , # "fr-FR"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaTvMarket.new(
      id: id,
      name: name,
      country_code: country_code,
      locale: locale,
    )
  end
end
