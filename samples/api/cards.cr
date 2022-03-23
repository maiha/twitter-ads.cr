require "../../src/twitter-ads"

account_id = ARGV.shift?

if account_id.nil?
  abort "usage: cards.cr account_id ..."
end
account_id = account_id.not_nil!

client = TwitterAds::Client.from_twurlrc
puts "Account(%s)" % [account_id.inspect]
client.cards(account_id).each do |c|
  puts "+ Cards(%s) # %s" % [c.name.inspect, c.card_type.inspect]
  c.media_urls.each do |url|
    puts "    #{url}"
  end
end
