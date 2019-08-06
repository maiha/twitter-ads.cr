require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.media_creatives(a.id, count: 3).each do |i|
    puts "+ MediaCreative(%s, %s) # %s" % [i.account_id.inspect, i.id.inspect, i.line_item_id.inspect]
  end
end
