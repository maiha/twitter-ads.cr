module TwitterAds::Api
  class CardsVideoConversation < TwitterAds::Response
    resource_collection CardsVideoConversation

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_video_conversation(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsVideoConversation
    res = get("/6/accounts/#{account_id}/cards/video_conversation.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsVideoConversation.new(res, account_id: account_id)
  end
end
