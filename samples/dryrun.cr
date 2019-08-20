require "../src/twitter-ads"

def run
  yield
rescue e : TwitterAds::Dryrun
  puts e.curl
end

client = TwitterAds::Client.from_twurlrc
client.dryrun = true

run {
  puts "# Standard API"
  client.statuses_lookup(id: "1")
}
run {
  puts "# Ads API"
  client.accounts(count: 1)
}
