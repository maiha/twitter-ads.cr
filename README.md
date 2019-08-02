# twitter-ads.cr

twitter-ads for [Crystal](http://crystal-lang.org/).

- crystal: 0.29.0

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  twitter-ads:
    github: maiha/twitter-ads.cr
    version: 0.1.0
```

## Usage

```crystal
require "twitter-ads"

client = TwitterAds::Client.new(
  CONSUMER_KEY,
  CONSUMER_SECRET,
  ACCESS_TOKEN,
  ACCESS_TOKEN_SECRET
)

accounts = client.accounts
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
