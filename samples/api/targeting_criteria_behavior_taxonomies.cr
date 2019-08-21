require "../../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.targeting_criteria_behavior_taxonomies(count: 5).each do |a|
  puts "TargetingCriteriaBehaviorTaxonomy(%s,%s) # %s" % [a.id, a.parent_id, a.name].map(&.inspect)
end
