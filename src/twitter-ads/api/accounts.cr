# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/accounts

module TwitterAds::Api
  class Accounts < TwitterAds::Response
    resource_collection Account
  end
end

class TwitterAds::Client
  def accounts(with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::Accounts
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/#{api_version}/accounts.json", opts)
    Api::Accounts.new(res)
  end
end
