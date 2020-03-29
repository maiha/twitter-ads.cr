class TwitterAds::StatsAccount
  var api : TwitterAds::Api::Stats
  var account_id : String

  JSON.mapping({
    data_type:          String        , #
    time_series_length: Int64         , #
    data:               Array(StatsAccountIdData) , #
    request:            StatsAccountRequest, #
  })

  def to_pb
    TwitterAds::Proto::StatsAccount.new(
      account_id: account_id,
      data_type: data_type,
      time_series_length: time_series_length,
      data: data.map(&.to_pb),
      request: request.to_pb,
    )
  end
end
