# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-options

module TwitterAds::Api
  class TargetingCriteriaBehaviorTaxonomies < TwitterAds::Response
    resource_collection TargetingCriteriaBehaviorTaxonomy
  end
end

class TwitterAds::Client
  def targeting_criteria_behavior_taxonomies(behavior_taxonomy_ids : String | Array(String) | Nil = nil, parent_behavior_taxonomy_ids : String | Array(String) | Nil = nil, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteriaBehaviorTaxonomies
    
    behavior_taxonomy_ids = behavior_taxonomy_ids.map(&.to_s).join(",") if behavior_taxonomy_ids.is_a?(Array)
    parent_behavior_taxonomy_ids = parent_behavior_taxonomy_ids.map(&.to_s).join(",") if parent_behavior_taxonomy_ids.is_a?(Array)

    opts = {
      "behavior_taxonomy_ids"        => behavior_taxonomy_ids.to_s,
      "parent_behavior_taxonomy_ids" => parent_behavior_taxonomy_ids.to_s,
      "count"                        => count.to_s,
      "cursor"                       => cursor.to_s,
    }
    res = get("/6/targeting_criteria/behavior_taxonomies.json", opts)
    Api::TargetingCriteriaBehaviorTaxonomies.new(res)
  end
end
