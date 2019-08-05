require "../response"
require "../cards_website"

module TwitterAds::Api
  class CardsWebsite < TwitterAds::Response
    resource_collection TwitterAds::CardsWebsite

    belongs_to account_id : String
  end
end
