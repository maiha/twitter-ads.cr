## Generated from cards_video_website.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoWebsite
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :name, :string, 3
        optional :title, :string, 4
        optional :card_uri, :string, 5
        optional :content_duration_seconds, :string, 6
        optional :video_owner_id, :string, 7
        optional :video_content_id, :string, 8
        optional :video_poster_url, :string, 9
        optional :video_poster_width, :string, 10
        optional :video_poster_height, :string, 11
        optional :video_url, :string, 12
        optional :video_width, :string, 13
        optional :video_height, :string, 14
        optional :video_hls_url, :string, 15
        optional :website_dest_url, :string, 16
        optional :website_display_url, :string, 17
        optional :website_shortened_url, :string, 18
        optional :website_url, :string, 19
        optional :created_at, :string, 20
        optional :updated_at, :string, 21
        optional :deleted, :bool, 22
        optional :account_id, :string, 23
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
