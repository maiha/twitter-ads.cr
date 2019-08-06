module TwitterAds::Api
  class PromotedAccounts < TwitterAds::Response
    resource_collection PromotedAccount

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def promoted_accounts(account_id : String, count : Int32 = 200, cursor : String = "") : Api::PromotedAccounts
    res = get("/5/accounts/#{account_id}/promoted_accounts.json", {"count" => count.to_s, "cursor" => cursor})
    Api::PromotedAccounts.new(res, account_id: account_id)
  end
end
