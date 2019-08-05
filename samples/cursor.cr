require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc

accounts = client.accounts(count: 2)
accounts.each do |a|
  puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
end
puts "# rate_limit_remaining: #{accounts.rate_limit_remaining}"

cursor = accounts.next_cursor?
puts "# next cursor: #{cursor.inspect}"
if cursor
  accounts = client.accounts(count: 2, cursor: cursor)
  accounts.each do |a|
    puts "Account(%s) # %s" % [a.id.inspect, a.name.inspect]
  end
  puts "# rate_limit_remaining: #{accounts.rate_limit_remaining}"
end
