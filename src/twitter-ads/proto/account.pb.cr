## Generated from proto/account.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct Account
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :business_id, :string, 3
        optional :business_name, :string, 4
        optional :industry_type, :string, 5
        optional :timezone, :string, 6
        optional :timezone_switch_at, :string, 7
        optional :salt, :string, 8
        optional :created_at, :string, 9
        optional :updated_at, :string, 10
        optional :approval_status, :string, 11
        optional :deleted, :bool, 12
      end
    end
    
    struct AccountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Account, 1
      end
    end
    end
  end
