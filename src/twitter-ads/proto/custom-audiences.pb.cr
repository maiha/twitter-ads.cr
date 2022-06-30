## Generated from custom-audiences.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CustomAudiences
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :targetable, :bool, 1
        optional :name, :string, 2
        repeated :targetable_types, :string, 3
        optional :audience_type, :string, 4
        optional :description, :string, 5
        optional :permission_level, :string, 6
        optional :owner_account_id, :string, 7
        optional :id, :string, 8
        repeated :reasons_not_targetable, :string, 9
        optional :created_at, :string, 10
        optional :updated_at, :string, 11
        optional :partner_source, :string, 12
        optional :deleted, :bool, 13
        optional :audience_size, :int64, 14
        optional :account_id, :string, 15
      end
    end
    
    struct CustomAudiencesArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudiences, 1
      end
    end
    end
  end
