module TwitterAds::Api
  class AccountMedia < TwitterAds::Response
    resource_collection AccountMedia

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def account_media(account_id : String, count : Int32 = 200, cursor : String = "") : Api::AccountMedia
    res = get("/#{api_version}/accounts/#{account_id}/account_media.json", {"count" => count.to_s, "cursor" => cursor})
    Api::AccountMedia.new(res, account_id: account_id)
  end
end
