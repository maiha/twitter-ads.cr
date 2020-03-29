class TwitterAds::Stats::IdData
  var account_id : String

  JSON.mapping({
    id:      String     , # "8u94t"
    id_data: Array(Data), # [{...}]
  })

  def to_pb
    TwitterAds::Proto::Stats::IdData.new(
      id: id,
      data: data,

      account_id: account_id,
    )
  end
end
