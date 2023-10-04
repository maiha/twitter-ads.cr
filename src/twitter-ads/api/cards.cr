module TwitterAds::Api
  class Cards < TwitterAds::Response
    resource_collection Cards

    belongs_to account_id : String

    NOT_DEFINED = ""
    
    JQ_TITLES = {
      "IMAGE_APP"                                => ".components[].title",
      "IMAGE_CAROUSEL_APP"                       => ".components[].title",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].title",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].title",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .title",
      "IMAGE_WEBSITE"                            => ".components[].title",
      "IMAGE_COLLECTION_WEBSITE"                 => ".slides[] | values[] | .title",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => ".slides[] | values[] | .title",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => ".slides[] | values[] | .title",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => ".components[].title",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => ".components[].title",
      "VIDEO_APP"                                => ".components[].title",
      "VIDEO_CAROUSEL_APP"                       => ".components[].title",
      "VIDEO_CAROUSEL_WEBSITE"                   => ".components[].title",
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => ".slides[] | values[] | .title",
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .title",
      "VIDEO_WEBSITE"                            => ".components[].title",
    }

    JQ_MEDIA_KEYS = {
      "IMAGE_APP"                                => ".components[].media_metadata | keys[]",
      "IMAGE_CAROUSEL_APP"                       => ".components[].media_metadata | keys[]",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].media_metadata | keys[]",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].media_metadata | keys[]",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .media_key",
      "IMAGE_WEBSITE"                            => ".components[].media_metadata | keys[]",
      "IMAGE_COLLECTION_WEBSITE"                 => ".slides[] | values[] | .media_key",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => ".slides[] | values[] | .media_key",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => ".slides[] | values[] | .media_key",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => ".components[].media_metadata | keys[]",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => ".components[].media_metadata | keys[]",
      "VIDEO_APP"                                => ".components[].media_metadata | keys[]",
      "VIDEO_CAROUSEL_APP"                       => ".components[].media_metadata | keys[]",
      "VIDEO_CAROUSEL_WEBSITE"                   => ".components[].media_metadata | keys[]",
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => ".slides[] | values[] | .media_key",
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .media_key",
      "VIDEO_WEBSITE"                            => ".components[].media_metadata | keys[]",
    }

    JQ_MEDIA_URLS = {
      "IMAGE_APP"                                => ".components[].media_metadata | values[].url",
      "IMAGE_CAROUSEL_APP"                       => ".components[].media_metadata | values[].url",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].media_metadata | values[].url",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].media_metadata | values[].url",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .media_metadata | values[].url",
      "IMAGE_WEBSITE"                            => ".components[].media_metadata | values[].url",
      "IMAGE_COLLECTION_WEBSITE"                 => ".slides[] | values[] | .media_metadata | values[].url",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => ".slides[] | values[] | .media_metadata | values[].url",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => ".slides[] | values[] | .media_metadata | values[].url",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => ".components[].media_metadata | values[].url",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => ".components[].media_metadata | values[].url",
      "VIDEO_APP"                                => ".components[].media_metadata | values[].url",
      "VIDEO_CAROUSEL_APP"                       => ".components[].media_metadata | values[].url",
      "VIDEO_CAROUSEL_WEBSITE"                   => ".components[].media_metadata | values[].url",
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => ".slides[] | values[] | .media_metadata | values[].url",
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .media_metadata | values[].url",
      "VIDEO_WEBSITE"                            => ".components[].media_metadata | values[].url",
    }

    JQ_DEST_URLS = {
      "IMAGE_APP"                                => ".components[].destination.url",
      "IMAGE_CAROUSEL_APP"                       => ".components[].destination.url",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].destination.url",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].destination.url",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .destination.url",
      "IMAGE_WEBSITE"                            => ".components[].destination.url",
      "IMAGE_COLLECTION_WEBSITE"                 => ".slides[] | values[] | .destination.url",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => ".slides[] | values[] | .destination.url",
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => ".slides[] | values[] | .destination.url",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => ".components[].destination.url",
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => ".components[].destination.url",
      "VIDEO_APP"                                => ".components[].destination.url",
      "VIDEO_CAROUSEL_APP"                       => ".components[].destination.url",
      "VIDEO_CAROUSEL_WEBSITE"                   => ".components[].destination.url",
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => ".slides[] | values[] | .destination.url",
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .destination.url",
      "VIDEO_WEBSITE"                            => ".components[].destination.url",
    }

    JQ_BUTTON_LABEL = {
      "IMAGE_APP"                                => %Q[.components[] | select(.type == "BUTTON") | .label.value],
      "IMAGE_CAROUSEL_APP"                       => %Q[.components[] | select(.type == "BUTTON") | .label.value],
      "IMAGE_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "IMAGE_WEBSITE"                            => NOT_DEFINED,
      "IMAGE_COLLECTION_WEBSITE"                 => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => NOT_DEFINED,
      "VIDEO_APP"                                => NOT_DEFINED,
      "VIDEO_CAROUSEL_APP"                       => NOT_DEFINED,
      "VIDEO_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "VIDEO_WEBSITE"                            => NOT_DEFINED,
    }

    JQ_BUTTON_STORE = {
      "IMAGE_APP"                                => %Q[.components[] | select(.type == "BUTTON") | .destination.country_code],
      "IMAGE_CAROUSEL_APP"                       => %Q[.components[] | select(.type == "BUTTON") | .destination.country_code],
      "IMAGE_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "IMAGE_WEBSITE"                            => NOT_DEFINED,
      "IMAGE_COLLECTION_WEBSITE"                 => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => NOT_DEFINED,
      "VIDEO_APP"                                => NOT_DEFINED,
      "VIDEO_CAROUSEL_APP"                       => NOT_DEFINED,
      "VIDEO_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "VIDEO_WEBSITE"                            => NOT_DEFINED,
    }

    JQ_BUTTON_PLATFORM_IOS_ID = {
      "IMAGE_APP"                                => %Q[.components[] | select(.type == "BUTTON") | .destination.ios_app_store_identifier],
      "IMAGE_CAROUSEL_APP"                       => %Q[.components[] | select(.type == "BUTTON") | .destination.ios_app_store_identifier],
      "IMAGE_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "IMAGE_WEBSITE"                            => NOT_DEFINED,
      "IMAGE_COLLECTION_WEBSITE"                 => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => NOT_DEFINED,
      "VIDEO_APP"                                => NOT_DEFINED,
      "VIDEO_CAROUSEL_APP"                       => NOT_DEFINED,
      "VIDEO_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "VIDEO_WEBSITE"                            => NOT_DEFINED,
    }

    JQ_BUTTON_PLATFORM_IOS_LINK = {
      "IMAGE_APP"                                => %Q[.components[] | select(.type == "BUTTON") | .destination.ios_deep_link],
      "IMAGE_CAROUSEL_APP"                       => %Q[.components[] | select(.type == "BUTTON") | .destination.ios_deep_link],
      "IMAGE_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "IMAGE_WEBSITE"                            => NOT_DEFINED,
      "IMAGE_COLLECTION_WEBSITE"                 => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => NOT_DEFINED,
      "VIDEO_APP"                                => NOT_DEFINED,
      "VIDEO_CAROUSEL_APP"                       => NOT_DEFINED,
      "VIDEO_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "VIDEO_WEBSITE"                            => NOT_DEFINED,
    }

    JQ_BUTTON_PLATFORM_GOOGLE_ID = {
      "IMAGE_APP"                                => %Q[.components[] | select(.type == "BUTTON") | .destination.googleplay_app_id],
      "IMAGE_CAROUSEL_APP"                       => %Q[.components[] | select(.type == "BUTTON") | .destination.googleplay_app_id],
      "IMAGE_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "IMAGE_WEBSITE"                            => NOT_DEFINED,
      "IMAGE_COLLECTION_WEBSITE"                 => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => NOT_DEFINED,
      "VIDEO_APP"                                => NOT_DEFINED,
      "VIDEO_CAROUSEL_APP"                       => NOT_DEFINED,
      "VIDEO_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "VIDEO_WEBSITE"                            => NOT_DEFINED,
    }

    JQ_BUTTON_PLATFORM_GOOGLE_LINK = {
      "IMAGE_APP"                                => %Q[.components[] | select(.type == "BUTTON") | .destination.googleplay_deep_link],
      "IMAGE_CAROUSEL_APP"                       => %Q[.components[] | select(.type == "BUTTON") | .destination.googleplay_deep_link],
      "IMAGE_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "IMAGE_WEBSITE"                            => NOT_DEFINED,
      "IMAGE_COLLECTION_WEBSITE"                 => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_APP"      => NOT_DEFINED,
      "MIXED_MEDIA_MULTI_DEST_CAROUSEL_WEBSITE"  => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_APP"     => NOT_DEFINED,
      "MIXED_MEDIA_SINGLE_DEST_CAROUSEL_WEBSITE" => NOT_DEFINED,
      "VIDEO_APP"                                => NOT_DEFINED,
      "VIDEO_CAROUSEL_APP"                       => NOT_DEFINED,
      "VIDEO_CAROUSEL_WEBSITE"                   => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_APP"            => NOT_DEFINED,
      "VIDEO_MULTI_DEST_CAROUSEL_WEBSITE"        => NOT_DEFINED,
      "VIDEO_WEBSITE"                            => NOT_DEFINED,
    }

    def complete!(jq : Jq)
      each_with_index do |card, i|
        card.titles     = jq_array(jq, i, card, JQ_TITLES)
        card.media_keys = jq_array(jq, i, card, JQ_MEDIA_KEYS)
        card.media_urls = jq_array(jq, i, card, JQ_MEDIA_URLS)
        card.dest_urls  = jq_array(jq, i, card, JQ_DEST_URLS)

        card.button_label           = jq_string(jq, i, card, JQ_BUTTON_LABEL)
        card.button_app_country     = jq_string(jq, i, card, JQ_BUTTON_STORE)
        card.button_app_ios_id      = jq_string(jq, i, card, JQ_BUTTON_PLATFORM_IOS_ID)
        card.button_app_ios_link    = jq_string(jq, i, card, JQ_BUTTON_PLATFORM_IOS_LINK)
        card.button_app_google_id   = jq_string(jq, i, card, JQ_BUTTON_PLATFORM_GOOGLE_ID)
        card.button_app_google_link = jq_string(jq, i, card, JQ_BUTTON_PLATFORM_GOOGLE_LINK)
      end
    end

    private def jq_array(jq : Jq, i : Int32, card : TwitterAds::Cards, filters : Hash(String, String)) : Array(String)
      card_type = card.card_type.to_s
      filter = filters[card_type]? || raise "No jq filters for cards(#{card_type})"
      output = jq.run(filter: ".data[#{i}]#{filter} | select( . != null )", source: body!)

      # make ordered uniqued array
      set = Set(String).new
      output.strip.split(/\n/).each do |v|
        set << v if !v.empty?
      end

      return set.to_a
    end

    private def jq_string(jq : Jq, i : Int32, card : TwitterAds::Cards, filters : Hash(String, String)) : String
      card_type = card.card_type.to_s
      filter = filters[card_type]? || raise "No jq filters for cards(#{card_type})"

      if filter == NOT_DEFINED
        return ""
      else
        value = jq.run(filter: ".data[#{i}]#{filter} | select( . != null )", source: body!)
        return value.chomp
      end
    end
  end
end

class TwitterAds::Client
  def cards(account_id : String, count : Int32 = 200, cursor : String = "") : Api::Cards
    res = get("/#{api_version}/accounts/#{account_id}/cards#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    api = Api::Cards.new(res, account_id: account_id)
    api.complete!(jq)
    return api
  end
end
