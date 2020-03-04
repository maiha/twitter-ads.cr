module TwitterAds::Api
  class CardsPoll < TwitterAds::Response
    resource_collection CardsPoll

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_poll(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsPoll
    res = get("/7/accounts/#{account_id}/cards/poll.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsPoll.new(res, account_id: account_id)
  end
end
