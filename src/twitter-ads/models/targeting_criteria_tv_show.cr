class TwitterAds::TargetingCriteriaTvShow
  JSON.mapping({
    id:    Int64   , # 10051997516
    name:  String? , # "Boston 25 News Special: Coming Home"
    genre: String? , # "SPECIAL"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaTvShow.new(
      id: id,
      name: name,
      genre: genre,
    )
  end
end
