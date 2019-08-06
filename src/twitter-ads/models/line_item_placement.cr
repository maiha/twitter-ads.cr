class TwitterAds::LineItemPlacement
  JSON.mapping({
    product_type: String?       , # "PROMOTED_ACCOUNT"
    placements:   Array(Array(String)) , # [["ALL_ON_TWITTER"], ["TWITTER_TIMELINE"]]
  })

  def to_pb
    TwitterAds::Proto::LineItemPlacement.new(
      product_type: product_type,
      placements: placements,
    )
  end
end
