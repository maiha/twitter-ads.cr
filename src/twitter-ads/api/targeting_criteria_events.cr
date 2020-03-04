# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaEvents < TwitterAds::Response
    enum EventTypes
      CONFERENCE
      HOLIDAY
      MUSIC_AND_ENTERTAINMENT
      OTHER
      SPORTS
    end

    resource_collection TargetingCriteriaEvent
  end
end

class TwitterAds::Client
  def targeting_criteria_events(event_types : String | Api::TargetingCriteriaEvents::EventTypes, country_codes : String? = nil, ids : String | Array(String) | Nil = nil, start_time : String | Time | Nil = nil, end_time : String | Time | Nil = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaEvents

    event_types = Api::TargetingCriteriaEvents::EventTypes.parse(event_types) if event_types.is_a?(String)

    start_time = start_time.to_rfc3339 if start_time.is_a?(Time)
    end_time   = end_time.to_rfc3339   if end_time.is_a?(Time)

    ids = ids.map(&.to_s).join(",") if ids.is_a?(Array)

    opts = {
      "event_types"   => event_types.to_s,
      "country_codes" => country_codes.to_s,
      "ids"           => ids.to_s,
      "start_time"    => start_time.to_s,
      "end_time"      => end_time.to_s,
      "count"         => count.to_s,
      "cursor"        => cursor.to_s,
    }
    res = get("/6/targeting_criteria/events.json", opts)
    Api::TargetingCriteriaEvents.new(res)
  end
end
