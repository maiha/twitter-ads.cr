module TwitterAds::Api
  class CardsImageAppDownload < TwitterAds::Response
    resource_collection CardsImageAppDownload

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def cards_image_app_download(account_id : String, count : Int32 = 200, cursor : String = "") : Api::CardsImageAppDownload
    res = get("/#{api_version}/accounts/#{account_id}/cards/image_app_download.json", {"count" => count.to_s, "cursor" => cursor})
    Api::CardsImageAppDownload.new(res, account_id: account_id)
  end
end
