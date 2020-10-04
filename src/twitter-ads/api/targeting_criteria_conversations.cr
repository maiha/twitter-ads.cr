# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaConversations < TwitterAds::Response
    enum ConversationType
      ACTORS
      ATHLETES
      BOOK_GENRES
      BOOKS
      BRAND_CATEGORIES
      BRANDS
      CELEBRITIES
      COACHES
      DIGITAL_CREATORS
      ENTERTAINMENT_BRANDS
      ENTERTAINMENT_PERSONALITIES
      FICTIONAL_CHARACTERS
      JOURNALISTS
      LIFESTYLES
      MOVIE_GENRES
      MOVIES
      MUSIC_GENRES
      MUSICIANS
      NEWS_STORIES
      NEWS
      PERSONS
      PLACES
      PODCASTS
      POLITICAL_AFFILIATIONS
      POLITICIANS
      PRODUCTS
      RADIO_STATIONS
      SPORTS_LEAGUES
      SPORTS_PERSONALITIES
      SPORTS_TEAMS
      SPORTS
      TRENDS
      TV_SHOWS
      VIDEO_GAME_PLATFORMS
      VIDEO_GAME_PUBLISHERS
      VIDEO_GAMES
    end

    resource_collection TargetingCriteriaConversation
  end
end

class TwitterAds::Client
  def targeting_criteria_conversations(conversation_type : String | Api::TargetingCriteriaConversations::ConversationType | Nil = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaConversations

    # validate conversation_type
    if conversation_type.is_a?(String)
      if v = Api::TargetingCriteriaConversations::ConversationType.parse?(conversation_type)
        conversation_type = v
      else
        got = conversation_type.inspect
        exp = Api::TargetingCriteriaConversations::ConversationType.values.map(&.to_s).inspect
        raise ArgumentError.new("ConversationType Error: got #{got}, expected one of #{exp}")
      end
    end
    
    opts = {
      "count" => count.to_s,
      "cursor" => cursor.to_s,
    }

    opts["conversation_type"] = conversation_type if conversation_type

    res = get("/#{api_version}/targeting_criteria/conversations#{api_suffix}", opts)
    Api::TargetingCriteriaConversations.new(res)
  end
end

