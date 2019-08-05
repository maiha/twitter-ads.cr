require "../src/twitter-ads"

client = TwitterAds::Client.from_twurlrc
client.dryrun = true
begin
  client.accounts(count: 1)
rescue dryrun : TwitterAds::Dryrun
  puts dryrun.curl
end
