class TwitterAds::TargetingCriteriaTvShow
  JSON.mapping({
    name:  String? , # "Boston 25 News Special: Coming Home"
    genre: String? , # "SPECIAL"
    targeting_value: Int64? ,# 10027243420
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaTvShow.new(
      name: name,
      genre: genre,
      targeting_value: targeting_value,
    )
  end
end
