require "./tracking_tag"

class TwitterAds::LineItem
  var account_id : String

  JSON.mapping({
    bid_strategy:                    String?       , # "MAX"
    advertiser_user_id:              String?       , # "756201191646691328"
    name:                            String?       , # "Untitled"
    placements:                      Array(String) , # ["ALL_ON_TWITTER"]
    start_time:                      String?       , # nil
    bid_amount_local_micro:          Int64?        , # 100000
    advertiser_domain:               String?       , # nil
    target_cpa_local_micro:          String?       , # nil
    primary_web_event_tag:           String?       , # nil
    pay_by:                          String?       , # "ENGAGEMENT"
    product_type:                    String?       , # "PROMOTED_TWEETS"
    end_time:                        String?       , # nil
    duration_in_days:                Int64?        , # 1
    total_budget_amount_local_micro: Int64?        , # 37500000
    objective:                       String?       , # "ENGAGEMENTS"
    id:                              String        , # "8v7jo"
    entity_status:                   String?       , # "ACTIVE"
    goal:                            String?       , # "ENGAGEMENT"
    frequency_cap:                   Int64?        , # 5
    categories:                      Array(String) , # []
    currency:                        String?       , # "USD"
    created_at:                      String?       , # "2017-05-27T08:04:00Z"
    updated_at:                      String?       , # "2017-05-27T08:06:25Z"
    campaign_id:                     String?       , # "8gdx6"
    creative_source:                 String?       , # "MANUAL"
    deleted:                         Bool?         , # false
  })

  def to_pb
    TwitterAds::Proto::LineItem.new(
      bid_strategy: bid_strategy,
      advertiser_user_id: advertiser_user_id,
      name: name,
      placements: placements,
      start_time: start_time,
      bid_amount_local_micro: bid_amount_local_micro,
      advertiser_domain: advertiser_domain,
      target_cpa_local_micro: target_cpa_local_micro,
      primary_web_event_tag: primary_web_event_tag,
      pay_by: pay_by,
      product_type: product_type,
      end_time: end_time,
      duration_in_days: duration_in_days,
      total_budget_amount_local_micro: total_budget_amount_local_micro,
      objective: objective,
      id: id,
      entity_status: entity_status,
      goal: goal,
      frequency_cap: frequency_cap,
      categories: categories,
      currency: currency,
      created_at: created_at,
      updated_at: updated_at,
      campaign_id: campaign_id,
      creative_source: creative_source,
      deleted: deleted,
      account_id: account_id,
    )
  end
end
