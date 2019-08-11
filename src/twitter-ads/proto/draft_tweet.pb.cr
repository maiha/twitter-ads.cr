## Generated from draft_tweet.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct DraftTweet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :int64, 1
        optional :user_id, :string, 2
        optional :card_uri, :string, 3
        optional :text, :string, 4
        repeated :media_ids, :string, 5
        repeated :media_keys, :string, 6
        optional :nullcast, :bool, 7
        optional :id_str, :string, 8
        optional :created_at, :string, 9
        optional :updated_at, :string, 10
        optional :account_id, :string, 11
      end
    end
    
    struct DraftTweetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DraftTweet, 1
      end
    end
    end
  end
