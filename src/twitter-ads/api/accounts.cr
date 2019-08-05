require "../response"
require "../account"

module TwitterAds::Api
  class Accounts < TwitterAds::Response
    resource_collection Account
  end
end
