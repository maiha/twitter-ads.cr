## Generated from promoted_account.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct PromotedAccount
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :user_id, :string, 2
        optional :line_item_id, :string, 3
        optional :approval_status, :string, 4
        optional :entity_status, :string, 5
        optional :created_at, :string, 6
        optional :updated_at, :string, 7
        optional :deleted, :bool, 8
        optional :account_id, :string, 9
      end
    end
    
    struct PromotedAccountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PromotedAccount, 1
      end
    end
    end
  end
