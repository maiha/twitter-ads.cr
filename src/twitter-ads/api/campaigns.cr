module TwitterAds::Api
  class Campaigns < TwitterAds::Response
    resource_collection Campaign

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def campaigns(account_id : String, count : Int32 = 200, cursor : String = "") : Api::Campaigns
    res = get("/5/accounts/#{account_id}/campaigns.json", {"count" => count.to_s, "cursor" => cursor})
    Api::Campaigns.new(res, account_id: account_id)
  end
end
