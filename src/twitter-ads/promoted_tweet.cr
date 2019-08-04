class TwitterAds::PromotedTweet
  JSON.mapping({
    id:              String  , # "1efwlo"
    line_item_id:    String? , # "96uzp"
    tweet_id:        String? , # "880290790664060928"
    approval_status: String? , # "ACCEPTED"
    entity_status:   String? , # "ACTIVE"
    created_at:      String? , # "2017-06-29T05:06:57Z"
    updated_at:      String? , # "2017-06-29T05:08:46Z"
    deleted:         Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::PromotedTweet.new(
      id: id,
      line_item_id: line_item_id,
      tweet_id: tweet_id,
      approval_status: approval_status,
      entity_status: entity_status,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
    )
  end
end
