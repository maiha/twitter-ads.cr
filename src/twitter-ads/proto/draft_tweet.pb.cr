## Generated from draft_tweet.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct DraftTweet
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :text, :string, 2
        optional :user_id, :string, 3
        optional :id, :string, 4
        optional :nullcast, :bool, 5
        optional :created_at, :string, 6
        optional :card_uri, :string, 7
        optional :updated_at, :string, 8
        repeated :media_keys, :string, 9
        optional :account_id, :string, 10
      end
    end
    
    struct DraftTweetArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DraftTweet, 1
      end
    end
    end
  end
