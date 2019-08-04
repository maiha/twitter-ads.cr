# NOTE: 'targeting_value' sometimes returns 0 (Integer).

class TwitterAds::TargetingCriteria
  JSON.mapping({
    id:                          String  , # "dpl3a6"
    name:                        String? , # "Custom audience targeting"
    line_item_id:                String? , # "8u94t"
    operator_type:               String? , # "EQ"
    tailored_audience_type:      String? , # "CRM"
    tailored_audience_expansion: Bool?   , # false
    targeting_value:             (Int64|String|Nil), # "249yj"
    targeting_type:              String?, # "TAILORED_AUDIENCE"
    created_at:                  String? , # "2017-05-26T03:29:35Z"
    updated_at:                  String? , # "2017-05-26T03:29:35Z"
    deleted:                     Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteria.new(
      id: id,
      name: name,
      line_item_id: line_item_id,
      operator_type: operator_type,
      tailored_audience_type: tailored_audience_type,
      tailored_audience_expansion: tailored_audience_expansion,
      targeting_value: targeting_value.to_s,
      targeting_type: targeting_type,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
    )
  end
end
