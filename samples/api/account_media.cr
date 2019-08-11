require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.account_media(a.id, count: 3).each do |c|
    puts "+ AccountMedia(%s, %s) # %s: %s" % [c.account_id.inspect, c.id.inspect, c.creative_type.inspect, c.video_id.inspect]
  end
end
