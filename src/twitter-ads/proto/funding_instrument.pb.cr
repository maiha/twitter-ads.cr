## Generated from funding_instrument.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct FundingInstrument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :type, :string, 3
        optional :able_to_fund, :bool, 4
        optional :credit_remaining_local_micro, :int64, 5
        optional :credit_limit_local_micro, :int64, 6
        optional :currency, :string, 7
        optional :description, :string, 8
        optional :entity_status, :string, 9
        optional :io_header, :string, 10
        optional :funded_amount_local_micro, :int64, 11
        repeated :reasons_not_able_to_fund, :string, 12
        optional :start_time, :string, 13
        optional :end_time, :string, 14
        optional :created_at, :string, 15
        optional :updated_at, :string, 16
        optional :deleted, :bool, 17
      end
    end
    
    struct FundingInstrumentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FundingInstrument, 1
      end
    end
    end
  end
