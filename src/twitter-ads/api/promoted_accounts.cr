# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/promoted-accounts

module TwitterAds::Api
  class PromotedAccounts < TwitterAds::Response
    resource_collection PromotedAccount

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def promoted_accounts(account_id : String, with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::PromotedAccounts
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/5/accounts/#{account_id}/promoted_accounts.json", opts)
    Api::PromotedAccounts.new(res, account_id: account_id)
  end
end
