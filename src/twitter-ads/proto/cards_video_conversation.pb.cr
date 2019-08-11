## Generated from cards_video_conversation.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoConversation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :name, :string, 4
        optional :title, :string, 5
        optional :first_cta, :string, 6
        optional :first_cta_tweet, :string, 7
        optional :video_url, :string, 8
        optional :video_content_id, :string, 9
        optional :video_owner_id, :string, 10
        optional :video_width, :string, 11
        optional :video_height, :string, 12
        optional :video_hls_url, :string, 13
        optional :video_poster_url, :string, 14
        optional :thank_you_text, :string, 15
        optional :created_at, :string, 16
        optional :updated_at, :string, 17
        optional :deleted, :bool, 18
        optional :account_id, :string, 19
      end
    end
    
    struct CardsVideoConversationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsVideoConversation, 1
      end
    end
    end
  end
