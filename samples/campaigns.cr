require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s, %s)" % [a.id.inspect, a.name.inspect]
  client.campaigns(a.id, count: 3).each do |c|
    puts "+ Campaign(%s, %s)" % [c.id.inspect, c.name.inspect]
  end
end
