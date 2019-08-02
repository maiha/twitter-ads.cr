
module TwitterAds
  class Account
    JSON.mapping({
      id:                 String,  # "18ce544yq30"
      name:               String,  # "API McTestface"
      business_id:        String?, # "bi"
      business_name:      String?, # nil
      industry_type:      String?, # nil
      timezone:           String,  # "Asia/Tokyo"
      timezone_switch_at: String,  # "2016-07-21T07:00:00Z"
      salt:               String,  # "54cb7b5a34183f77d82dd6d0f4329691"
      created_at:         String,  # "2016-07-21T22:42:09Z"
      updated_at:         String,  # "2017-08-01T06:47:21Z"
      approval_status:    String,  # "ACCEPTED"
      deleted:            Bool  ,  # false
    })
  end
end
