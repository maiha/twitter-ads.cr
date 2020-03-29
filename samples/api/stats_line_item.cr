require "../../src/twitter-ads"

### LineItem
account_id   = ARGV.shift? || abort "usage: #{PROGRAM_NAME} <<account_id>> line_item_id"
line_item_id = ARGV.shift? || abort "usage: #{PROGRAM_NAME} account_id <<line_item_id>>"

entity     = TwitterAds::Api::Stats::Entity::LINE_ITEM
entity_ids = line_item_id.split(",")

granularity = "DAY"

client     = TwitterAds::Client.from_twurlrc
end_time   = Time.local - 1.day
start_time = end_time - 2.day
metrics    = [TwitterAds::Api::Stats::Metric::ENGAGEMENT]

stats = client.stats(
  account_id: account_id,
  entity: entity,
  entity_ids: entity_ids,
  start_time: start_time.to_s("%F"),
  end_time: end_time.to_s("%F"),
  metrics: metrics,
  granularity: granularity,
  placement: "ALL_ON_TWITTER",
)

puts stats.body
