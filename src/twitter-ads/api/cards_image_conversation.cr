module TwitterAds::Api
  class CardsImageConversation < TwitterAds::Response
    resource_collection CardsImageConversation

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_image_conversation(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsImageConversation
    res = get("/#{api_version}/accounts/#{account_id}/cards/image_conversation#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsImageConversation.new(res, account_id: account_id)
  end
end
