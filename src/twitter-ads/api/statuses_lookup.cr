# https://developer.twitter.com/en/docs/tweets/post-and-engage/api-reference/get-statuses-lookup.html

module TwitterAds::Api
  class StatusesLookup < TwitterAds::Response
    resource_none

    include Enumerable(TwitterAds::StatusesLookup)

    var parsed : Array(TwitterAds::StatusesLookup) = Array(TwitterAds::StatusesLookup).from_json(body!)

    def each
      parsed.each do |i|
        yield(i)
      end
    end
  end
end

class TwitterAds::Client
  # This is not "twitter-ads-api" but "twitter-api" that requires ".json" extension.
  # So the setting of `TwitterAds::Client#api_suffix` should be ignored.
  def statuses_lookup(id : String | Array(String)) : Api::StatusesLookup
    ids = id.is_a?(String) ? [id] : id
    opts = {
      "id" => ids.join(","),
    }
    res = get("/1.1/statuses/lookup.json", opts)
    Api::StatusesLookup.new(res)
  end

  # /1.1/statuses/lookup returns a hash or array according to the options.
  # This is not suit for programming languages with static types.
  # For now, disable all options.
  
#  def statuses_lookup(id : String | Array(String), include_entities : Bool = false, trim_user : Bool = true, map : Bool = true, include_ext_alt_text : Bool = true, include_card_uri : Bool = true) : Api::StatusesLookup
#
#    ids = id.is_a?(String) ? [id] : id
#    opts = {
#      "id"                   => ids.join(","),
#      "include_entities"     => include_entities.to_s,
#      "trim_user"            => trim_user.to_s,
#      "map"                  => map.to_s,
#      "include_ext_alt_text" => include_ext_alt_text.to_s,
#      "include_card_uri"     => include_card_uri.to_s,
#    }
#  end
end
