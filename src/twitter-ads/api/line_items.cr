module TwitterAds::Api
  class LineItems < TwitterAds::Response
    resource_collection TwitterAds::LineItem

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def line_items(account_id : String, count : Int32 = 200, cursor : String = "") : Api::LineItems
    res = get("/5/accounts/#{account_id}/line_items.json", {"count" => count.to_s, "cursor" => cursor})
    Api::LineItems.new(res, account_id: account_id)
  end
end
