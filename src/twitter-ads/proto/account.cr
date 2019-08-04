class TwitterAds::Account
  def to_pb
    TwitterAds::Proto::Account.new(
      id: id,
      name: name,
      business_id: business_id,
      business_name: business_name,
      industry_type: industry_type,
      timezone: timezone,
      timezone_switch_at: timezone_switch_at,
      salt: salt,
      created_at: created_at,
      updated_at: updated_at,
      approval_status: approval_status,
      deleted: deleted,
    )
  end
end
