class TwitterAds::StatsAccountRequest
  JSON.mapping({
    params: StatsAccountParams , #
  })

  def to_pb
    TwitterAds::Proto::StatsAccountRequest.new(
      params: params.to_pb,
    )
  end
end
