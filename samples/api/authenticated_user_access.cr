require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  i = client.authenticated_user_access(a.id)
  puts "+ authenticated_user_access(%s, %s) # %s" % [i.account_id.inspect, i.user_id.inspect, i.permissions.inspect]
end
