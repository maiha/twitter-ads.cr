class TwitterAds::LineItem
  JSON.mapping({
    id:                              String?       , # "8v7jo"
    name:                            String?       , # "Untitled"
    bid_type:                        String?       , # "MAX"
    product_type:                    String?       , # "PROMOTED_TWEETS"
    advertiser_user_id:              Int64?        , # 756201191646691300
    campaign_id:                     String?       , # "8gdx6"
    advertiser_domain:               String?       , # nil
    automatically_select_bid:        Bool?         , # false
    bid_amount_local_micro:          Int64?        , # 100000
    bid_unit:                        String?       , # "ENGAGEMENT"
    categories:                      Array(String) , # []
    creative_source:                 String?       , # "MANUAL"
    currency:                        String?       , # "USD"
    entity_status:                   String?       , # "ACTIVE"
    include_sentiment:               String?       , # "POSITIVE_ONLY"
    objective:                       String?       , # "TWEET_ENGAGEMENTS"
    optimization:                    String?       , # "DEFAULT"
    placements:                      Array(String) , # ["ALL_ON_TWITTER"]
    primary_web_event_tag:           String?       , # nil
    target_cpa_local_micro:          String?       , # nil
    total_budget_amount_local_micro: String?       , # nil
    tracking_tags:                   Array(String) , # []
    charge_by:                       String?       , # "ENGAGEMENT"
    start_time:                      String?       , # nil
    end_time:                        String?       , # nil
    created_at:                      String?       , # "2017-05-27T08:04:00Z"
    updated_at:                      String?       , # "2017-05-27T08:06:25Z"
    deleted:                         Bool?         , # false
  })

  def to_pb
    TwitterAds::Proto::LineItem.new(
      id: id,
      name: name,
      bid_type: bid_type,
      product_type: product_type,
      advertiser_user_id: advertiser_user_id,
      campaign_id: campaign_id,
      advertiser_domain: advertiser_domain,
      automatically_select_bid: automatically_select_bid,
      bid_amount_local_micro: bid_amount_local_micro,
      bid_unit: bid_unit,
      categories: categories,
      creative_source: creative_source,
      currency: currency,
      entity_status: entity_status,
      include_sentiment: include_sentiment,
      objective: objective,
      optimization: optimization,
      placements: placements,
      primary_web_event_tag: primary_web_event_tag,
      target_cpa_local_micro: target_cpa_local_micro,
      total_budget_amount_local_micro: total_budget_amount_local_micro,
      tracking_tags: tracking_tags,
      charge_by: charge_by,
      start_time: start_time,
      end_time: end_time,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
    )
  end
end
