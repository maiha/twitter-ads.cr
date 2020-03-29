require "../../src/twitter-ads"

def run(client, account : String | TwitterAds::Account, line_item_id = nil)
  case account
  when TwitterAds::Account
    aid  = account.id.to_s
    name = account.name
  else
    aid  = account.to_s
    name = nil
  end

  puts "Account(%s) # %s" % [aid.inspect, name.inspect]

  line_item_id ||= (
    line_items = client.line_items(aid, count: 1)
    line_items.first.id
  )

  line_item_ids = [line_item_id]

  end_time   = Time.local
  start_time = end_time - 1.day

  # metrics = TwitterAds::Api::Stats::Metric.values
  metrics = [TwitterAds::Api::Stats::Metric::ENGAGEMENT]
  
  stats = client.stats(
    account_id: aid,
    entity: :line_item,
    entity_ids: line_item_ids,
    start_time: start_time.to_s("%F"),
    end_time: end_time.to_s("%F"),
    metrics: metrics,
    granularity: "DAY",
    placement: "ALL_ON_TWITTER",
  )

  STDERR.puts stats.rate_limit?.inspect
  
  puts stats.body
end

account_id   = ARGV.shift?
line_item_id = ARGV.shift?

client = TwitterAds::Client.from_twurlrc

if aid = account_id
  run(client, aid, line_item_id)
else
  client.accounts(count: 2).each do |a|
    run(client, a)
  end
end
