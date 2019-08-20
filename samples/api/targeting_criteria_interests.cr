require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_interests(count: 5).each do |a|
  puts "TargetingCriteriaInterest(%s,%s) # %s" % [a.targeting_type, a.targeting_value, a.name].map(&.inspect)
end
