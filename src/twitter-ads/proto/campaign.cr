class TwitterAds::Campaign
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
