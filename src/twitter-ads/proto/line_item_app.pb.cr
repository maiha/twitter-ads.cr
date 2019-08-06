## Generated from line_item_app.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct LineItemApp
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :line_item_id, :string, 2
        optional :app_store_identifier, :string, 3
        optional :os_type, :string, 4
        optional :created_at, :string, 5
        optional :updated_at, :string, 6
        optional :deleted, :bool, 7
        optional :account_id, :string, 8
      end
    end
    
    struct LineItemAppArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LineItemApp, 1
      end
    end
    end
  end
