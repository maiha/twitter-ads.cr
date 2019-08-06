module TwitterAds::Api
  class LineItemApps < TwitterAds::Response
    resource_collection LineItemApp

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def line_item_apps(account_id : String, count : Int32 = 200, cursor : String = "") : Api::LineItemApps
    res = get("/5/accounts/#{account_id}/line_item_apps.json", {"count" => count.to_s, "cursor" => cursor})
    Api::LineItemApps.new(res, account_id: account_id)
  end
end
