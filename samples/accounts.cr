require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 10).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
end
