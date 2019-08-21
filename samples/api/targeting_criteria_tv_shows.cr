require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
locale = "en-US" # "ja-JP"
client.targeting_criteria_tv_shows(locale, q: "news", count: 3).each do |a|
  puts "TargetingCriteriaTvShow(%s) # %s" % [a.id, a.name].map(&.inspect)
end
