# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/line-item-apps

module TwitterAds::Api
  class LineItemApps < TwitterAds::Response
    resource_collection LineItemApp

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def line_item_apps(account_id : String, with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::LineItemApps
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/7/accounts/#{account_id}/line_item_apps.json", opts)
    Api::LineItemApps.new(res, account_id: account_id)
  end
end
