# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/authenticated-user-access

module TwitterAds::Api
  class AuthenticatedUserAccess < TwitterAds::Response
    resource_single AuthenticatedUserAccess
    
    belongs_to account_id : String

    delegate user_id, permissions, to: parser.data
  end
end

class TwitterAds::Client
  def authenticated_user_access(account_id : String) : Api::AuthenticatedUserAccess
    res = get("/#{api_version}/accounts/#{account_id}/authenticated_user_access#{api_suffix}")
    Api::AuthenticatedUserAccess.new(res, account_id: account_id)
  end
end
