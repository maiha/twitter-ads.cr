## Generated from cards_website.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsWebsite
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :created_at, :string, 3
        optional :deleted, :bool, 4
        optional :id, :string, 5
        optional :image_display_height, :string, 6
        optional :image_display_width, :string, 7
        optional :media_key, :string, 8
        optional :media_url, :string, 9
        optional :name, :string, 10
        optional :updated_at, :string, 11
        optional :website_amp_url, :string, 12
        optional :website_cdn_amp_url, :string, 13
        optional :website_dest_url, :string, 14
        optional :website_display_url, :string, 15
        optional :website_shortened_url, :string, 16
        optional :website_title, :string, 17
        optional :website_url, :string, 18
        optional :account_id, :string, 19
      end
    end
    
    struct CardsWebsiteArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsWebsite, 1
      end
    end
    end
  end
