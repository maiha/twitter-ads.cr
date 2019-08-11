## Generated from tweet_preview.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TweetPreview
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :tweet_id, :string, 1
        optional :preview, :string, 2
        optional :account_id, :string, 3
      end
    end
    
    struct TweetPreviewArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TweetPreview, 1
      end
    end
    end
  end
