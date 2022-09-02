require "../../src/twitter-ads"

tweet_ids = ARGV

if tweet_ids.empty?
  abort "usage: tweets_lookup.cr tweet_ids...\n" +
        "   ex) tweets_lookup.cr 1460323737035677698"
end

tweet_fields = "reply_settings"

client = TwitterAds::Client.from_twurlrc
client.tweets_lookup(id: tweet_ids, tweet_fields: tweet_fields).each do |t|
  puts "+ TweetsLookup(%s) # (%s)%s" % [t.id.inspect, t.reply_settings, t.text.inspect]
end
