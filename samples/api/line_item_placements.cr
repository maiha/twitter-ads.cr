require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.line_item_placements.each do |i|
  puts "LineItemPlacement(%s)" % [i.product_type.inspect]
  i.placements.each do |ary|
    puts "  %s" % ary.inspect
  end
end
