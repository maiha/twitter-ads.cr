module TwitterAds::Api
  class Cards < TwitterAds::Response
    resource_collection Cards

    belongs_to account_id : String

    JQ_MEDIA_URLS = {
      "IMAGE_APP"                                => ".components[].media_metadata | values[].url",
      "IMAGE_CAROUSEL_APP"                       => ".components[].media_metadata | values[].url",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].media_metadata | values[].url",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].media_metadata | values[].url",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .media_metadata | values[].url",
      "IMAGE_WEBSITE"                            => ".components[].media_metadata | values[].url",
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

    def complete!(jq : Jq)
      complete_media_urls!(jq)
    end
    
    def complete_media_urls!(jq)
      each_with_index do |card, i|
        card_type = card.card_type.to_s
        jq_filter = JQ_MEDIA_URLS[card_type]? || raise "No jq filters for cards (i=#{i}, card_type=#{card_type})"
        value = jq.run(filter: ".data[#{i}]#{jq_filter}", json: body!)
        card.media_urls = value.strip.split(/\s+/)
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
