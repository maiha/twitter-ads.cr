# twitter-ads.cr [![Build Status](https://travis-ci.org/maiha/twitter-ads.cr.svg?branch=master)](https://travis-ci.org/maiha/twitter-ads.cr)

Twitter Ads API SDK for [Crystal](http://crystal-lang.org/).

- crystal: 0.30.0

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

## API

### `TwitterAds::Client`

- `accounts() : Api::Accounts`
- `authenticated_user_access(account_id : String) : AuthenticatedUserAccess`
- `campaigns(account_id : String) : Api::Campaigns`
- `cards_image_app_download(account_id : String) : Api::CardsImageAppDownload`
- `cards_image_conversation(account_id : String) : Api::CardsImageConversation`
- `cards_image_direct_message(account_id : String) : Api::CardsImageDirectMessage`
- `cards_video_app_download(account_id : String) : Api::CardsVideoAppDownload`
- `cards_video_conversation(account_id : String) : Api::CardsVideoConversation`
- `cards_video_website(account_id : String) : Api::CardsVideoWebsite`
- `cards_website(account_id : String) : Api::CardsWebsite`
- `funding_instruments(account_id : String) : Api::FundingInstruments`
- `line_item_apps(account_id : String) : Api::LineItemApps`
- `line_items(account_id : String) : Api::LineItems`
- `line_item_placements() : Api::LineItemPlacements`
- `media_creatives(account_id : String) : Api::MediaCreatives`
- `promoted_accounts(account_id : String) : Api::PromotedAccounts`
- `promoted_tweets(account_id : String) : Api::PromotedTweets`
- `scheduled_promoted_tweets(account_id : String) : Api::ScheduledPromotedTweets`
- `targeting_criteria(account_id : String, line_item_ids : Array(String)) : Api::TargetingCriteria`
- `targeting_criteria_locations(country_code = nil, location_type = nil, q = nil) : Api::TargetingCriteriaLocations`

`count` and `cursor` argments are also availble in all methods.

See [src/twitter-ads/api/](./src/twitter-ads/api/) for more details.

## Models

[./src/twitter-ads/models](./src/twitter-ads/models/)

## Samples

Actual usages are in [./samples/](./samples/)

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
    version: 0.4.0
```

## Development

```console
$ crystal spec
```

## NOTE
- targeting-criteria: `targeting_value` sometimes returns 0 (Integer).
- line-items: `tracking_tags` returns object (document says `Type: String`)
```json
  "tracking_tags": [
    {
      "tracking_partner": "DOUBLE_CLICK",
      "tracking_tag": "https://ad.doubleclick.net/..."
    }
  ]
```

## Roadmap

- Analytics
  - [ ] Asynchronous Analytics
  - [ ] Reach and Average Frequency
  - [ ] Synchronous Analytics
  - [ ] Auction Insights
  - [ ] Active Entities
- Audiences
  - [ ] Insights
  - [ ] Keyword Insights
  - [ ] Tailored Audience Permissions
  - [ ] Tailored Audiences
  - [ ] Audience Intelligence
  - [ ] Tailored Audiences Users
- Campaign Management
  - [x] Accounts
  - [x] Authenticated User Access
  - [ ] Bidding Rules
  - [x] Campaigns
  - [ ] Content Categories
  - [ ] Features
  - [x] Funding Instruments
  - [ ] IAB Categories
  - [x] Line Items
  - [x] Line Item Apps
  - [x] Line Item Placements
  - [x] Media Creatives
  - [x] Promoted Accounts
  - [x] Promoted Tweets
  - [x] Promotable Users
  - [ ] Reach Estimate
  - [x] Scheduled Promoted Tweets
  - [x] Targeting Criteria
  - [ ] Targeting Options
  - [ ] Targeting Suggestions
  - [ ] Tax Settings
  - [ ] User Settings
- Creatives
  - [ ] Account Media
  - [x] Image App Download Cards
  - [x] Image Conversation Cards
  - [ ] Scheduled Tweets
  - [x] Video App Download Cards
  - [x] Video Conversation Cards
  - [x] Video Website Cards
  - [x] Website Cards
  - [ ] Preroll Call To Actions
  - [ ] Tweets
  - [x] Image Direct Message Cards
  - [ ] Video Direct Message Cards
  - [ ] Media Library
  - [ ] Cards Fetch
  - [ ] Poll Cards
  - [ ] Draft Tweets
  - [ ] Tweet Previews
- Measurement
  - [ ] App Event Provider Configurations
  - [ ] App Event Tags
  - [ ] Web Event Tags
  - [ ] App Lists
  - [ ] Conversion Attribution
  - [ ] Conversion Event

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
