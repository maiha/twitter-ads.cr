class TwitterAds::ReachEstimate
  JSON.mapping({
    impressions:                       String? , # {"min" => 264, "max" => 397}
    count:                             String? , # {"min" => 215, "max" => 322}
    infinite_bid_count:                String? , # {"min" => 1638, "max" => 2457}
    engagements:                       String? , # {"min" => 7, "max" => 11}
    estimated_daily_spend_local_micro: String? , # {"min" => 440000, "max" => 660000}
    account_id:                        String? , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::ReachEstimate.new(
      impressions: impressions,
      count: count,
      infinite_bid_count: infinite_bid_count,
      engagements: engagements,
      estimated_daily_spend_local_micro: estimated_daily_spend_local_micro,
      account_id: account_id,
    )
  end
end
