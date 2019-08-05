class TwitterAds::TrackingTag
  JSON.mapping({
    tracking_partner: String? , # "DOUBLE_CLICK"
    tracking_tag:     String? , # "https://ad.doubleclick.net/..."
  })

  def to_pb
    TwitterAds::Proto::TrackingTag.new(
      tracking_partner: tracking_partner,
      tracking_tag: tracking_tag,
    )
  end
end
