
module TwitterAds
  class Campaign
    JSON.mapping({
      id:                 String,  # "8wku2"
      name:               String,  # "batch campaigns"
      start_time:         String?, # "2017-06-30T00:00:00Z"
      end_time:           String?, # null
      duration_in_days:   Int64?,  # null
      standard_delivery:  Bool,    # true
      servable:           Bool,    # false

      funding_instrument_id:           String?,        # "lygyi"
      daily_budget_amount_local_micro: Int64?,         # 140000000
      total_budget_amount_local_micro: Int64?,         # null
      reasons_not_servable:            Array(String),  # ["PAUSED_BY_ADVERTISER"]

      frequency_cap:      Int64?,  # null
      currency:           String?, # "USD"
      created_at:         String?, # "2016-07-21T22:42:09Z"
      updated_at:         String?, # "2017-08-01T06:47:21Z"
      entity_status:      String?, # "PAUSED"
      deleted:            Bool,    # false
    })
  end
end
