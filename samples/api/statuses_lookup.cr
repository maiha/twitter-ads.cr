require "../../src/twitter-ads"

tweet_ids = ARGV

if tweet_ids.empty?
  abort "usage: statuses_lookup.cr tweet_ids...\n" +
        "   ex) statuses_lookup.cr 1122911801354510336"
end

client = TwitterAds::Client.from_twurlrc
client.url = "https://api.twitter.com"

client.statuses_lookup(tweet_ids).each do |c|
  puts "+ StatusesLookup(%s) # %s" % [c.id_str.inspect, c.text.inspect]
end
