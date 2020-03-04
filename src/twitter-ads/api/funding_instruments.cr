module TwitterAds::Api
  class FundingInstruments < TwitterAds::Response
    resource_collection FundingInstrument
  end
end

class TwitterAds::Client
  def funding_instruments(account_id : String, count : Int32 = 200, cursor : String = "") : Api::FundingInstruments
    res = get("/6/accounts/#{account_id}/funding_instruments.json", {"count" => count.to_s, "cursor" => cursor})
    Api::FundingInstruments.new(res)
  end
end
