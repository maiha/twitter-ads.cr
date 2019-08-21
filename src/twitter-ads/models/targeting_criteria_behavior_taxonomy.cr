class TwitterAds::TargetingCriteriaBehaviorTaxonomy
  JSON.mapping({
    id:         String  , # "5e"
    name:       String? , # "Travel services"
    parent_id:  String? , # "31"
    created_at: String? , # "2015-01-21T21:51:28Z"
    updated_at: String? , # "2015-01-21T21:51:28Z"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaBehaviorTaxonomy.new(
      id: id,
      name: name,
      parent_id: parent_id,
      created_at: created_at,
      updated_at: updated_at,
    )
  end
end
