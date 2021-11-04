require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_tv_markets.each do |a|
  puts "TargetingCriteriaTvMarket(%s) # %s (locale: %s)" % [a.country_code, a.name, a.locale].map(&.inspect)
end
