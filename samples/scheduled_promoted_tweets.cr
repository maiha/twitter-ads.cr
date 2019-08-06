require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.scheduled_promoted_tweets(a.id, count: 3).each do |i|
    puts "+ ScheduledPpromotedTweet(%s, %s) # %s" % [i.account_id.inspect, i.scheduled_tweet_id.inspect, i.tweet_id.inspect]
  end
end
