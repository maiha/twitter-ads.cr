module TwitterAds::Api
  class Accounts < TwitterAds::Response
    resource_collection Account
  end
end

class TwitterAds::Client
  def accounts(count : Int32 = 200, cursor : String = "") : Api::Accounts
    res = get("/5/accounts.json", {"count" => count.to_s, "cursor" => cursor})
    Api::Accounts.new(res)
  end
end
