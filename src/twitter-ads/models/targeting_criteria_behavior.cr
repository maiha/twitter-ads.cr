class TwitterAds::TargetingCriteriaBehavior
  JSON.mapping({
    id:                   String        , # "lfrt"
    name:                 String?       , # "Auto service buyer"
    targetable_types:     Array(String) , # ["BEHAVIOR", "NEGATIVE_BEHAVIOR", "BEHAVIOR_LOOKALIKE_EXPANDED"]
    country_code:         String?       , # "US"
    partner_source:       String?       , # "Datalogix"
    behavior_taxonomy_id: String?       , # "2"
    audience_size:        Int64?        , # 9583030
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaBehavior.new(
      id: id,
      name: name,
      targetable_types: targetable_types,
      country_code: country_code,
      partner_source: partner_source,
      behavior_taxonomy_id: behavior_taxonomy_id,
      audience_size: audience_size,
    )
  end
end
