module TwitterAds::Api
  class CardsVideoDirectMessage < TwitterAds::Response
    resource_collection CardsVideoDirectMessage

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_video_direct_message(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsVideoDirectMessage
    res = get("/6/accounts/#{account_id}/cards/video_direct_message.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsVideoDirectMessage.new(res, account_id: account_id)
  end
end
