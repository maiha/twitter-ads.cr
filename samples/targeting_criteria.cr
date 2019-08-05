require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.accounts(count: 2).each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  client.line_items(a.id, count: 2).each do |i|
    puts "+ LineItem(%s, %s)" % [i.id.inspect, i.name.inspect]
    client.targeting_criteria(a.id, [i.id], count: 3).each do |t|
      puts "  + TargetingCriteria(%s, %s) # %s" % [t.account_id.inspect, t.id.inspect, t.name.inspect]
    end
  end
end
