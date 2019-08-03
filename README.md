# twitter-ads.cr [![Build Status](https://travis-ci.org/maiha/twitter-ads.cr.svg?branch=master)](https://travis-ci.org/maiha/twitter-ads.cr)

Twitter Ads API SDK for [Crystal](http://crystal-lang.org/).

- crystal: 0.29.0

## Usage

```crystal
require "twitter-ads"

# client = TwitterAds::Client.from_twurlrc("~/.twurlrc")
client = TwitterAds::Client.new(
  CONSUMER_KEY,
  CONSUMER_SECRET,
  ACCESS_TOKEN,
  ACCESS_TOKEN_SECRET
)

accounts = client.accounts(count: 200)
accounts.req.to_s             # => "https://ads-api.twitter.com/5/accounts.json?count=200"
accounts.rate_limit           # => "2000"
accounts.rate_limit_remaining # => "1997"
accounts.rate_limit_reset     # => 1564851820
accounts.size                 # => 16
accounts.next_cursor?         # => nil
accounts.next?                # => nil (TwitterAds::Api::Accounts?)
accounts.each do |a|
  a.name
```

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  twitter-ads:
    github: maiha/twitter-ads.cr
    version: 0.1.0
```

## Development

```console
$ crystal spec
```

## Contributing

1. Fork it (<https://github.com/maiha/twitter-ads.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [maiha](https://github.com/maiha) - creator, maintainer
- Special thanks to OSS
  - specification is derived from [twitter-ruby-ads-sdk](https://github.com/twitterdev/twitter-ruby-ads-sdk) (MIT)
  - implementaion is derived from [twitter-crystal](https://github.com/sferik/twitter-crystal) (Apache License 2.0)
