require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.media_library(a.id, count: 3).each do |c|
    puts "+ MediaLibrary(%s, %s) # %s: %s" % [c.account_id.inspect, c.media_id.inspect, c.media_type.inspect, c.media_key.inspect]
  end
end
