require "../../src/twitter-ads"

account_id = ARGV.shift?
tweet_type = ARGV.shift?
tweet_ids  = ARGV

if account_id.nil? || tweet_type.nil? || tweet_ids.empty?
  abort "usage: cards_all.cr account_id   tweet_type  tweet_ids...\n" +
        "   ex) cards_all.cr 18ce54d4x5t  PUBLISHED   1122911801354510336"
end
account_id = account_id.not_nil!
tweet_type = tweet_type.not_nil!
tweet_ids  = tweet_ids.map(&.to_i64)

client = TwitterAds::Client.from_twurlrc
client.tweet_previews(account_id, tweet_type, tweet_ids).each do |c|
  puts "+ TweetPreview(%s, %s)" % [c.account_id.inspect, c.tweet_id.inspect]
  puts c.preview
end
