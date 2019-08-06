## Generated from promoted_tweet.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct PromotedTweet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :line_item_id, :string, 2
        optional :tweet_id, :string, 3
        optional :approval_status, :string, 4
        optional :entity_status, :string, 5
        optional :created_at, :string, 6
        optional :updated_at, :string, 7
        optional :deleted, :bool, 8
        optional :account_id, :string, 9
      end
    end
    
    struct PromotedTweetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PromotedTweet, 1
      end
    end
    end
  end
