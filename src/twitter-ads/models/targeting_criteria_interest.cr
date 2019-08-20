class TwitterAds::TargetingCriteriaInterest
  JSON.mapping({
    name:            String? , # "Books and literature/Biographies and memoirs"
    targeting_type:  String? , # "INTEREST"
    targeting_value: String? , # "1001"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaInterest.new(
      name: name,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
    )
  end
end
