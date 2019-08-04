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

accounts.each do |a|
  a.id                        # => "18ce54d4x5t"
  a.name                      # => "API McTestface"

  campaigns = client.campaigns(a.id)
  campaigns.each do |c|
    c.name                    # => "batch campaigns"
```

## Protobuf

schema (version 2)
- [./proto/](./proto/)

generated crystal codes
- [./src/twitter-ads/proto/](./src/twitter-ads/proto/)

Protobuf-related files are not read by default.
To use it, you need to install [protobuf.cr](https://github.com/jeromegn/protobuf.cr) and require above codes.

```crystal
require "protobuf"
require "twitter-ads/proto"
```

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  twitter-ads:
    github: maiha/twitter-ads.cr
    version: 0.2.0
```

## Development

```console
$ crystal spec
```

## NOTE
- targeting-criteria: `targeting_value` sometimes returns 0 (Integer).

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
