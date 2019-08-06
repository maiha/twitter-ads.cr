module TwitterAds::Api
  class LineItemPlacements < TwitterAds::Response
    resource_collection LineItemPlacement
  end
end

class TwitterAds::Client
  def line_item_placements : Api::LineItemPlacements
    res = get("/5/line_items/placements.json")
    Api::LineItemPlacements.new(res)
  end
end
