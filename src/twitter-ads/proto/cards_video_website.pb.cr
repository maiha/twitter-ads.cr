## Generated from cards_video_website.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoWebsite
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :content_duration_seconds, :string, 3
        optional :created_at, :string, 4
        optional :deleted, :bool, 5
        optional :id, :string, 6
        optional :media_key, :string, 7
        optional :media_url, :string, 8
        optional :name, :string, 9
        optional :poster_media_url, :string, 10
        optional :title, :string, 11
        optional :updated_at, :string, 12
        optional :video_height, :string, 13
        optional :video_owner_id, :string, 14
        optional :video_poster_height, :string, 15
        optional :video_poster_width, :string, 16
        optional :video_width, :string, 17
        optional :website_dest_url, :string, 18
        optional :website_display_url, :string, 19
        optional :website_shortened_url, :string, 20
        optional :website_url, :string, 21
        optional :account_id, :string, 22
      end
    end
    
    struct CardsVideoWebsiteArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsVideoWebsite, 1
      end
    end
    end
  end
