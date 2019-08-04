require "oauth"
require "logger"
require "json"
require "yaml"

require "var"

# model
require "./twitter-ads/account"
require "./twitter-ads/campaign"
require "./twitter-ads/cards_website"
require "./twitter-ads/line_item"
require "./twitter-ads/targeting_criteria"

# data
require "./twitter-ads/twurlrc"
require "./twitter-ads/curl_cmd"

# api
require "./twitter-ads/api/**"

# execution
require "./twitter-ads/request"
require "./twitter-ads/response"
require "./twitter-ads/client"
require "./twitter-ads/dryrun"
