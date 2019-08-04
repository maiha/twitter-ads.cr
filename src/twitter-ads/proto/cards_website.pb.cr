## Generated from proto/cards_website.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsWebsite
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :card_type, :string, 3
        optional :card_uri, :string, 4
        optional :image, :string, 5
        optional :image_display_width, :string, 6
        optional :image_display_height, :string, 7
        optional :website_dest_url, :string, 8
        optional :website_display_url, :string, 9
        optional :website_shortened_url, :string, 10
        optional :website_title, :string, 11
        optional :website_url, :string, 12
        optional :created_at, :string, 13
        optional :updated_at, :string, 14
        optional :deleted, :bool, 15
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
