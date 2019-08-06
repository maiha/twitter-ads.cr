class TwitterAds::ContentCategory
  JSON.mapping({
    id:             String        , # "st"
    name:           String?       , # "Alcohol"
    iab_categories: Array(String) , # ["IAB8-18", "IAB8-5"]
  })

  def to_pb
    TwitterAds::Proto::ContentCategory.new(
      id: id,
      name: name,
      iab_categories: iab_categories,
    )
  end
end
