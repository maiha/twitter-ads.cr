require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_app_store_categories.each do |a|
  puts "TargetingCriteriaAppStoreCategory(%s,%s) # %s" % [a.targeting_type, a.targeting_value, a.name].map(&.inspect)
end
