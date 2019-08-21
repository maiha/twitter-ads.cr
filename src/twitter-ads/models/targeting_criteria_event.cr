class TwitterAds::TargetingCriteriaEvent
  JSON.mapping({
    id:           String  , # "1ex"
    name:         String? , # "New Year's"
    is_global:    Bool?   , # true
    country_code: String? , # nil
    event_type:   String? , # "HOLIDAY"
    start_time:   String? , # "2017-12-31T00:00:00Z"
    end_time:     String? , # "2018-01-02T00:00:00Z"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaEvent.new(
      id: id,
      name: name,
      is_global: is_global,
      country_code: country_code,
      event_type: event_type,
      start_time: start_time,
      end_time: end_time,
    )
  end
end
