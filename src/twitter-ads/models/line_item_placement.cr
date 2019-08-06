class TwitterAds::LineItemPlacement
  JSON.mapping({
    product_type: String?       , # "PROMOTED_ACCOUNT"
    placements:   Array(String) , # [["ALL_ON_TWITTER"], ["TWITTER_TIMELINE"]]
    account_id:   String?       , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::LineItemPlacement.new(
      product_type: product_type,
      placements: placements,
      account_id: account_id,
    )
  end
end
