require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_platform_versions.each do |a|
  puts "TargetingCriteriaPlatformVersion(%s,%s) # %s" % [a.targeting_type, a.targeting_value, a.name].map(&.inspect)
end
