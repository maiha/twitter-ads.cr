## Generated from targeting_criteria_conversation.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaConversation
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :targeting_type, :string, 2
        optional :targeting_value, :string, 3
        optional :conversation_type, :string, 4
      end
    end
    
    struct TargetingCriteriaConversationArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaConversation, 1
      end
    end
    end
  end
