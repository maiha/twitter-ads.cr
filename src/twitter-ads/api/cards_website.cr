module TwitterAds::Api
  class CardsWebsite < TwitterAds::Response
    resource_collection CardsWebsite

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_website(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsWebsite
    res = get("/#{api_version}/accounts/#{account_id}/cards/website#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsWebsite.new(res, account_id: account_id)
  end
end
