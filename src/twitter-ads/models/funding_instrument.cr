class TwitterAds::FundingInstrument
  JSON.mapping({
    id:                           String        , # "lygyi"
    account_id:                   String?       , # "18ce54d4x5t"
    type:                         String?       , # "CREDIT_CARD"
    able_to_fund:                 Bool?         , # true
    credit_remaining_local_micro: String?       , # nil
    credit_limit_local_micro:     Int64?        , # 200000000
    currency:                     String?       , # "USD"
    description:                  String?       , # "Visa ending in 0650"
    entity_status:                String?       , # "ACTIVE"
    io_header:                    String?       , # nil
    funded_amount_local_micro:    Int64?        , # 645940000
    reasons_not_able_to_fund:     Array(String) , # []
    start_time:                   String?       , # "2016-07-22T04:24:04Z"
    end_time:                     String?       , # nil
    created_at:                   String?       , # "2016-07-22T04:24:04Z"
    updated_at:                   String?       , # "2017-04-05T00:25:13Z"
    deleted:                      Bool?         , # false
  })

  def to_pb
    TwitterAds::Proto::FundingInstrument.new(
      id: id,
      account_id: account_id,
      type: type,
      able_to_fund: able_to_fund,
      credit_remaining_local_micro: credit_remaining_local_micro,
      credit_limit_local_micro: credit_limit_local_micro,
      currency: currency,
      description: description,
      entity_status: entity_status,
      io_header: io_header,
      funded_amount_local_micro: funded_amount_local_micro,
      reasons_not_able_to_fund: reasons_not_able_to_fund,
      start_time: start_time,
      end_time: end_time,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
    )
  end
end
