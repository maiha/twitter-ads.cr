## Generated from scheduled_promoted_tweet.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct ScheduledPromotedTweet
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :tweet_id, :string, 2
        optional :scheduled_tweet_id, :string, 3
        optional :line_item_id, :string, 4
        optional :created_at, :string, 5
        optional :updated_at, :string, 6
        optional :deleted, :bool, 7
        optional :account_id, :string, 8
      end
    end
    
    struct ScheduledPromotedTweetArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ScheduledPromotedTweet, 1
      end
    end
    end
  end
