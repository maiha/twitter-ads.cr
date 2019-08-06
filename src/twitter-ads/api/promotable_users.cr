module TwitterAds::Api
  class PromotableUsers < TwitterAds::Response
    resource_collection PromotableUser

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def promotable_users(account_id : String, count : Int32 = 200, cursor : String = "") : Api::PromotableUsers
    res = get("/5/accounts/#{account_id}/promotable_users.json", {"count" => count.to_s, "cursor" => cursor})
    Api::PromotableUsers.new(res, account_id: account_id)
  end
end
