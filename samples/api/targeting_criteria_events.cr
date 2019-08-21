require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_events(event_types: "HOLIDAY").each_with_index do |a, i|
  break if i >= 3
  puts "TargetingCriteriaEvent(%s) # %s" % [a.id, a.name].map(&.inspect)
end
