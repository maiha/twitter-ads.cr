require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.preroll_call_to_actions(a.id, count: 3).each do |c|
    puts "+ PrerollCallToAction(%s, %s) # %s" % [c.account_id.inspect, c.id.inspect, c.call_to_action_url.inspect]
  end
end
