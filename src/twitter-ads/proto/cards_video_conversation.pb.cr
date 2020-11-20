## Generated from cards_video_conversation.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoConversation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :cover_image_display_height, :string, 3
        optional :cover_image_display_width, :string, 4
        optional :cover_image_url, :string, 5
        optional :cover_video_content_id, :string, 6
        optional :cover_video_height, :string, 7
        optional :cover_video_hls_url, :string, 8
        optional :cover_video_poster_url, :string, 9
        optional :cover_video_url, :string, 10
        optional :cover_video_width, :string, 11
        optional :created_at, :string, 12
        optional :deleted, :bool, 13
        optional :first_cta, :string, 14
        optional :first_cta_tweet, :string, 15
        optional :fourth_cta, :string, 16
        optional :fourth_cta_tweet, :string, 17
        optional :id, :string, 18
        optional :media_key, :string, 19
        optional :media_url, :string, 20
        optional :name, :string, 21
        optional :poster_media_url, :string, 22
        optional :second_cta, :string, 23
        optional :second_cta_tweet, :string, 24
        optional :thank_you_dest_url, :string, 25
        optional :thank_you_display_url, :string, 26
        optional :thank_you_shortened_url, :string, 27
        optional :thank_you_text, :string, 28
        optional :thank_you_url, :string, 29
        optional :third_cta, :string, 30
        optional :third_cta_tweet, :string, 31
        optional :title, :string, 32
        optional :updated_at, :string, 33
        optional :video_height, :string, 34
        optional :video_owner_id, :string, 35
        optional :video_width, :string, 36
        optional :account_id, :string, 37
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
