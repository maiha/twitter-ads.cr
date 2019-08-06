require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_locations(count: 5).each do |a|
  puts "TargetingCriteriaLocation(%s,%s) # %s [%s] %s" % [a.targeting_type.inspect, a.targeting_value.inspect, a.location_type.inspect, a.country_code.inspect, a.name.inspect]
end
