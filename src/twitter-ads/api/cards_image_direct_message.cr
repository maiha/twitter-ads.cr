module TwitterAds::Api
  class CardsImageDirectMessage < TwitterAds::Response
    resource_collection CardsImageDirectMessage

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_image_direct_message(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsImageDirectMessage
    res = get("/#{api_version}/accounts/#{account_id}/cards/image_direct_message.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsImageDirectMessage.new(res, account_id: account_id)
  end
end
