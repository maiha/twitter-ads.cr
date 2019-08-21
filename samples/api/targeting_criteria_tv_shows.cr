require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_tv_shows("en-US", q: "news", count: 3).each do |a|
  puts "TargetingCriteriaTvShow(%s) # %s" % [a.id, a.name].map(&.inspect)
end
