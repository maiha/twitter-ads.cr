require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_network_operators(count: 5).each do |a|
  puts "TargetingCriteriaNetworkOperator(%s,%s) # %s" % [a.targeting_type, a.targeting_value, a.name].map(&.inspect)
end
