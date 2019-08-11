## Generated from scheduled_tweet.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct ScheduledTweet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :int64, 1
        optional :card_uri, :string, 2
        optional :scheduled_status, :string, 3
        optional :scheduled_at, :string, 4
        optional :completed_at, :string, 5
        optional :text, :string, 6
        repeated :media_ids, :string, 7
        repeated :media_keys, :string, 8
        optional :nullcast, :bool, 9
        optional :id_str, :string, 10
        optional :tweet_id, :string, 11
        optional :user_id, :string, 12
        optional :created_at, :string, 13
        optional :updated_at, :string, 14
        optional :account_id, :string, 15
      end
    end
    
    struct ScheduledTweetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ScheduledTweet, 1
      end
    end
    end
  end
