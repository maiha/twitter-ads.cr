# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/promoted-tweets.html

module TwitterAds::Api
  class LineItemPlacements < TwitterAds::Response
    resource_collection LineItemPlacement
  end
end

class TwitterAds::Client
  def line_item_placements : Api::LineItemPlacements
    res = get("/#{api_version}/line_items/placements#{api_suffix}")
    Api::LineItemPlacements.new(res)
  end
end
