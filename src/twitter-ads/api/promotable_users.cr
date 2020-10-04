# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/promotable-users

module TwitterAds::Api
  class PromotableUsers < TwitterAds::Response
    resource_collection PromotableUser

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def promotable_users(account_id : String, with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::PromotableUsers
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/#{api_version}/accounts/#{account_id}/promotable_users#{api_suffix}", opts)
    Api::PromotableUsers.new(res, account_id: account_id)
  end
end
