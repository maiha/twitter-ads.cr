class TwitterAds::TweetsLookupError
  JSON.mapping({
    resource_id:   String? , # "1329348696106967"
    parameter:     String? , # "ids"
    resource_type: String? , # "tweet"
    section:       String? , # "data"
    title:         String? , # "Authorization Error"
    value:         String? , # "1329348696106967"
    detail:        String? , # "Sorry, you are not authorized to see the Tweet with ids: [1329348696106967]."
    type:          String? , # "https://api.twitter.com/2/problems/not-authorized-for-resource"
  })

  def to_pb
    TwitterAds::Proto::TweetsLookupError.new(
      resource_id: resource_id,
      parameter: parameter,
      resource_type: resource_type,
      section: section,
      title: title,
      value: value,
      detail: detail,
      type: type,
    )
  end
end
