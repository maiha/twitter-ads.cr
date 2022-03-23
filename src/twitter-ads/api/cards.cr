module TwitterAds::Api
  class Cards < TwitterAds::Response
    resource_collection Cards

    belongs_to account_id : String

    JQ_FILTERS = {
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

    def compute_media_urls!
      each_with_index do |card, i|
        compute_media_urls!(card, i)
      end
    end

    private def compute_media_urls!(card, i)
      card_type = card.card_type.to_s
      jq_filter = JQ_FILTERS[card_type]?.to_s

      if jq_filter.empty?
        raise "No jq filters for cards (i=#{i}, card_type=#{card_type})"
      end

      jq_filter = ".data[#{i}] | #{jq_filter}"
      value = Process.run("jq",  {"-r", jq_filter}, input: IO::Memory.new(body!)) do |proc|
        proc.output.gets_to_end
      end

      card.media_urls = value.strip.split(/\s+/)
    end
  end
end

class TwitterAds::Client
  def cards(account_id : String, count : Int32 = 200, cursor : String = "") : Api::Cards
    res = get("/#{api_version}/accounts/#{account_id}/cards#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    api = Api::Cards.new(res, account_id: account_id)
    api.compute_media_urls!
    return api
  end
end
