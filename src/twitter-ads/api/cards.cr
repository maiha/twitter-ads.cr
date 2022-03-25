module TwitterAds::Api
  class Cards < TwitterAds::Response
    resource_collection Cards

    belongs_to account_id : String

    JQ_TITLES = {
      "IMAGE_APP"                                => ".components[].title",
      "IMAGE_CAROUSEL_APP"                       => ".components[].title",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].title",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].title",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .title",
      "IMAGE_WEBSITE"                            => ".components[].title",
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

    JQ_DEST_URLS = {
      "IMAGE_APP"                                => ".components[].destination.url",
      "IMAGE_CAROUSEL_APP"                       => ".components[].destination.url",
      "IMAGE_CAROUSEL_WEBSITE"                   => ".components[].destination.url",
      "IMAGE_MULTI_DEST_CAROUSEL_APP"            => ".components[].destination.url",
      "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"        => ".slides[] | values[] | .destination.url",
      "IMAGE_WEBSITE"                            => ".components[].destination.url",
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

    def complete!(jq : Jq)
      each_with_index do |card, i|
        card.titles     = jq(jq, i, card, JQ_TITLES)
        card.media_urls = jq(jq, i, card, JQ_MEDIA_URLS)
        card.dest_urls  = jq(jq, i, card, JQ_DEST_URLS)
      end
    end

    private def jq(jq : Jq, i : Int32, card : TwitterAds::Cards, filters : Hash(String, String)) : Array(String)
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
