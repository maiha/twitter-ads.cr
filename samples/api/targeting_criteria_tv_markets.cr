require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_tv_markets.each do |a|
  puts "TargetingCriteriaTvMarket(%s, %s) # %s (locale: %s)" % [a.id, a.country_code, a.locale, a.name, a.locale].map(&.inspect)
end
