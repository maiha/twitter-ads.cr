require "../../src/twitter-ads"

account_id = ARGV.shift?
card_uris  = ARGV

if account_id.nil? || card_uris.empty?
  abort "usage: cards_all.cr account_id card_uris..."
end
account_id = account_id.not_nil!

client = TwitterAds::Client.from_twurlrc
puts "Account(%s)" % [account_id.inspect]
client.cards_all(account_id, card_uris).each do |c|
  puts "+ CardsAll(%s, %s) # %s" % [c.account_id.inspect, c.id.inspect, c.name.inspect]
end
