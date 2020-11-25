require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.tweets(a.id, count: 3).each do |t|
    puts "+ Tweets(%s, %s) # %s" % [t.account_id.inspect, t.id.inspect, t.id]
    puts "    %s" % [t.created_at]
    puts "    %s @%s (%s)" % [t.user_name, t.user_screen_name, t.user_id]
    puts "    %s" % [t.full_text.inspect]
  end
end
