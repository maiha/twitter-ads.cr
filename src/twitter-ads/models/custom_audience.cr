class TwitterAds::CustomAudience
  var account_id : String
  
  JSON.mapping({
    targetable:             Bool?         , # true
    name:                   String?       , # "twurl-using-subshell-for-file"
    targetable_types:       Array(String) , # ["CRM", "EXCLUDED_CRM"]
    audience_type:          String?       , # "CRM"
    description:            String?       , # nil
    permission_level:       String?       , # "READ_WRITE"
    owner_account_id:       String?       , # "18ce54d4x5t"
    id:                     String        , # "1nmth"
    reasons_not_targetable: Array(String) , # []
    created_at:             String?       , # "2017-01-08T08:19:58Z"
    updated_at:             String?       , # "2017-01-08T16:21:13Z"
    partner_source:         String?       , # "OTHER"
    deleted:                Bool?         , # false
    audience_size:          Int64?        , # 1470
  })

  def to_pb
    TwitterAds::Proto::CustomAudience.new(
      targetable: targetable,
      name: name,
      targetable_types: targetable_types,
      audience_type: audience_type,
      description: description,
      permission_level: permission_level,
      owner_account_id: owner_account_id,
      id: id,
      reasons_not_targetable: reasons_not_targetable,
      created_at: created_at,
      updated_at: updated_at,
      partner_source: partner_source,
      deleted: deleted,
      audience_size: audience_size,
      account_id: account_id,
    )
  end
end
