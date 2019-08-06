require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.promotable_users(a.id, count: 3).each do |i|
    puts "+ PromotableUsers(%s, %s) # %s" % [i.account_id.inspect, i.id.inspect, i.promotable_user_type.inspect]
  end
end
