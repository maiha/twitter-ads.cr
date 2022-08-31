require "../../src/twitter-ads"

tweet_ids = ARGV

if tweet_ids.empty?
  abort "usage: tweets_lookup.cr tweet_ids...\n" +
        "   ex) tweets_lookup.cr 1460323737035677698"
end

client = TwitterAds::Client.from_twurlrc
client.tweets_lookup(tweet_ids).each do |c|
  puts "+ TweetsLookup(%s) # %s" % [c.id_str.inspect, c.text.inspect]
end
