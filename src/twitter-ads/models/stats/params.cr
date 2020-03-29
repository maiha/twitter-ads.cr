class TwitterAds::Stats::Params
  JSON.mapping({
    entity:            String        , # "CAMPAIGN"
    entity_ids:        Array(String) , # ["8wku1", "8wku2"]
    start_time:        String        , # "2020-03-26T15:00:00Z"
    end_time:          String        , # "2020-03-28T15:00:00Z"
    metric_groups:     Array(String) , # ["ENGAGEMENT"]
    granularity:       String        , # "DAY"
    placement:         String        , # "ALL_ON_TWITTER"

    segmentation_type: String?       , # nil
    country:           String?       , # nil
    platform:          String?       , # nil
  })

  def to_pb
    TwitterAds::Proto::Stats::Params.new(
      start_time: start_time,
      segmentation_type: segmentation_type,
      entity_ids: entity_ids,
      end_time: end_time,
      country: country,
      placement: placement,
      granularity: granularity,
      entity: entity,
      platform: platform,
      metric_groups: metric_groups,
    )
  end
end
