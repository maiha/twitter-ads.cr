class TwitterAds::Campaign
  JSON.mapping({
    id:                              String        , # "8wku2"
    name:                            String?       , # "batch campaigns"
    start_time:                      String?       , # "2017-06-30T00:00:00Z"
    end_time:                        String?       , # null
    duration_in_days:                Int64?        , #
    standard_delivery:               Bool?         , # true
    servable:                        Bool?         , # true
    funding_instrument_id:           String?       , # "lygyi"
    daily_budget_amount_local_micro: Int64?        , # 140000000
    total_budget_amount_local_micro: Int64?        , # null
    reasons_not_servable:            Array(String) , # # ["PAUSED_BY_ADVERTISER"]
    frequency_cap:                   Int64?        , # null
    currency:                        String?       , # "USD"
    created_at:                      String?       , # "2016-07-21T22:42:09Z"
    updated_at:                      String?       , # "2017-08-01T06:47:21Z"
    entity_status:                   String?       , # "PAUSED"
    deleted:                         Bool?         , # false
  })

  def to_pb
    TwitterAds::Proto::Campaign.new(
      id: id,
      name: name,
      start_time: start_time,
      end_time: end_time,
      duration_in_days: duration_in_days,
      standard_delivery: standard_delivery,
      servable: servable,
      funding_instrument_id: funding_instrument_id,
      daily_budget_amount_local_micro: daily_budget_amount_local_micro,
      total_budget_amount_local_micro: total_budget_amount_local_micro,
      reasons_not_servable: reasons_not_servable,
      frequency_cap: frequency_cap,
      currency: currency,
      created_at: created_at,
      updated_at: updated_at,
      entity_status: entity_status,
      deleted: deleted,
    )
  end
end
