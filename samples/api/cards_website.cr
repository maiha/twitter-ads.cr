require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.cards_website(a.id, count: 3).each do |c|
    puts "+ CardsWebsite(%s, %s) # %s" % [c.account_id.inspect, c.id.inspect, c.name.inspect]
  end
end
