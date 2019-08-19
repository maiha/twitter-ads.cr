# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/line-items

module TwitterAds::Api
  class LineItems < TwitterAds::Response
    resource_collection LineItem

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def line_items(account_id : String, with_deleted : Bool = false, with_draft : Bool = false, count : Int32 = 200, cursor : String = "") : Api::LineItems
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    opts["with_draft"]   = "true" if with_draft
    res = get("/5/accounts/#{account_id}/line_items.json", opts)
    Api::LineItems.new(res, account_id: account_id)
  end
end
