## Generated from preroll_call_to_action.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct PrerollCallToAction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :line_item_id, :string, 2
        optional :call_to_action, :string, 3
        optional :call_to_action_url, :string, 4
        optional :created_at, :string, 5
        optional :updated_at, :string, 6
        optional :deleted, :bool, 7
        optional :account_id, :string, 8
      end
    end
    
    struct PrerollCallToActionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PrerollCallToAction, 1
      end
    end
    end
  end
