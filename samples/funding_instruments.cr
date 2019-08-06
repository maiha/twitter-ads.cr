require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.funding_instruments(a.id, count: 3).each do |f|
    puts "+ FundingInstruments(%s, %s) # %s" % [f.account_id.inspect, f.id.inspect, f.type.inspect]
  end
end
