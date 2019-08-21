require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_behaviors(count: 3).each do |a|
  puts "TargetingCriteriaBehavior(%s, %s) # %s" % [a.id, a.name, a.targetable_types].map(&.inspect)
end
