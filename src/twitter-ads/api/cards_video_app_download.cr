module TwitterAds::Api
  class CardsVideoAppDownload < TwitterAds::Response
    resource_collection CardsVideoAppDownload

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_video_app_download(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsVideoAppDownload
    res = get("/#{api_version}/accounts/#{account_id}/cards/video_app_download.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsVideoAppDownload.new(res, account_id: account_id)
  end
end
