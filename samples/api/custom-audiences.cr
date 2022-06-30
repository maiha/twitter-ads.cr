require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.custom_audiences(a.id, count: 3).each do |i|
    puts "+ CustomAudiences(%s, %s) # %s" % [i.account_id.inspect, i.id.inspect, i.name.inspect]
  end
end
