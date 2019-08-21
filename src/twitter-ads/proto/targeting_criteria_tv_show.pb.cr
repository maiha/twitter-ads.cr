## Generated from targeting_criteria_tv_show.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaTvShow
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :int64, 1
        optional :name, :string, 2
        optional :genre, :string, 3
      end
    end
    
    struct TargetingCriteriaTvShowArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaTvShow, 1
      end
    end
    end
  end
