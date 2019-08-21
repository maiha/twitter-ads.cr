require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_conversations.each_with_index do |a, i|
  break if i >= 3
  puts "TargetingCriteriaConversation(%s,%s) # %s" % [a.targeting_type, a.targeting_value, a.name].map(&.inspect)
end
