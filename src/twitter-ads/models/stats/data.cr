class TwitterAds::Stats::Data
  var account_id : String

  JSON.mapping({
    segment: String?,  # null
    metrics: Metrics?, # {"impressions": [1233], ...}
  })

  def to_pb
    TwitterAds::Proto::Stats::Data.new(
      segment: segment,
      metrics: metrics,
    )
  end
end
