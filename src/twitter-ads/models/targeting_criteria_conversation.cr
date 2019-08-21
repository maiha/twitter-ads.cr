class TwitterAds::TargetingCriteriaConversation
  JSON.mapping({
    name:              String? , # "NFL"
    targeting_type:    String? , # "CONVERSATION"
    targeting_value:   String? , # "a1"
    conversation_type: String? , # "SPORTS"
  })

  def to_pb
    TwitterAds::Proto::TargetingCriteriaConversation.new(
      name: name,
      targeting_type: targeting_type,
      targeting_value: targeting_value,
      conversation_type: conversation_type,
    )
  end
end
