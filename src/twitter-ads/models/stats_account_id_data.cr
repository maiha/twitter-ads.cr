class TwitterAds::StatsAccountIdData
  JSON.mapping({
    id:      String , #
    id_data: Array(StatsAccountMetrics) , #
  })

  def to_pb
    TwitterAds::Proto::StatsAccountIdData.new(
      id: id,
      metrics: id_data.map(&.to_pb),
    )
  end
end
