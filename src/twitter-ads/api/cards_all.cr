module TwitterAds::Api
  class CardsAll < TwitterAds::Response
    resource_collection CardsAll

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_all(account_id : String, card_uris : Array(String)) : Api::CardsAll
    res = get("/#{api_version}/accounts/#{account_id}/cards/all#{api_suffix}", {"card_uris" => card_uris.join(",")})
    Api::CardsAll.new(res, account_id: account_id)
  end
end
