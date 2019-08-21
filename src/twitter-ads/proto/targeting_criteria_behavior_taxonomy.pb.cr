## Generated from targeting_criteria_behavior_taxonomy.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaBehaviorTaxonomy
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :parent_id, :string, 3
        optional :created_at, :string, 4
        optional :updated_at, :string, 5
      end
    end
    
    struct TargetingCriteriaBehaviorTaxonomyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaBehaviorTaxonomy, 1
      end
    end
    end
  end
