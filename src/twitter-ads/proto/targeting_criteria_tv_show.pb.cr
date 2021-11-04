## Generated from targeting_criteria_tv_show.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaTvShow
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :genre, :string, 2
        optional :targeting_value, :int64, 3
      end
    end
    
    struct TargetingCriteriaTvShowArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaTvShow, 1
      end
    end
    end
  end
