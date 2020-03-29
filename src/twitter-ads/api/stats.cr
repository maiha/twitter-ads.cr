# https://ads-api.twitter.com/7/stats/accounts/:account_id
# GET https://ads-api.twitter.com/7/stats/accounts/18ce54d4x5t?entity=LINE_ITEM&entity_ids=8u94t&start_time=2017-05-19&end_time=2017-05-26&granularity=TOTAL&placement=ALL_ON_TWITTER&metric_groups=ENGAGEMENT

module TwitterAds::Api
  class Stats < TwitterAds::Response
    enum Entity
      ACCOUNT
      CAMPAIGN
      FUNDING_INSTRUMENT
      LINE_ITEM
      ORGANIC_TWEET
      PROMOTED_ACCOUNT
      PROMOTED_TWEET
      MEDIA_CREATIVE
    end

    enum Granularity
      DAY
      HOUR
      TOTAL      
    end

    enum Metric
      BILLING
      ENGAGEMENT
      LIFE_TIME_VALUE_MOBILE_CONVERSION
      MEDIA
      MOBILE_CONVERSION
      VIDEO
      WEB_CONVERSION
    end

    enum Placement
      ALL_ON_TWITTER
      PUBLISHER_NETWORK
    end

    resource_none
    belongs_to account_id : String

    var parsed : StatsAccount = StatsAccount.from_json(body!)

    def self.to_time_s(time : String | Time, granularity : Granularity) : String
      case time
      when Time
        case granularity
        when .total?
          return time.to_s("%F")
        when .day?
          return time.to_s("%F")
        when .hour?
          return time.to_rfc3339
        end
      end
      return time.to_s
    end
  end
end

class TwitterAds::Client
  def stats(account_id : String,
            entity : String | Api::Stats::Entity,
            entity_ids : Array(String),
            start_time : String | Time,
            end_time : String | Time,
            metrics : String | Array(String) | Array(Api::Stats::Metric),
            granularity : String | Api::Stats::Granularity = "HOUR",
            placement : String | Api::Stats::Placement = "ALL_ON_TWITTER",
           ) : TwitterAds::StatsAccount
    res = _stats(account_id: account_id, entity: entity, entity_ids: entity_ids, start_time: start_time, end_time: end_time, metrics: metrics, granularity: granularity, placement: placement)

    api = Api::Stats.new(res, account_id: account_id)
    stats = api.parsed
    stats.api = api
    stats.account_id = account_id
    return stats
  end

  def _stats(account_id : String,
            entity : String | Api::Stats::Entity,
            entity_ids : Array(String),
            start_time : String | Time,
            end_time : String | Time,
            metrics : String | Array(String) | Array(Api::Stats::Metric),
            granularity : String | Api::Stats::Granularity = "HOUR",
            placement : String | Api::Stats::Placement = "ALL_ON_TWITTER",
           )

    entity      = Api::Stats::Entity.parse(entity) if entity.is_a?(String)
    granularity = Api::Stats::Granularity.parse(granularity) if granularity.is_a?(String)
    placement   = Api::Stats::Placement.parse(placement) if placement.is_a?(String)

    metrics = metrics.map{|v|
      case v
      when Api::Stats::Metric
        v
      else
        Api::Stats::Metric.parse(v)
      end
    } if metrics.is_a?(Array)

    entity_ids = entity_ids.map(&.to_s).join(",") if entity_ids.is_a?(Array)
    metrics    = metrics.map(&.to_s).join(",") if metrics.is_a?(Array)

    opts = {
      "entity"        => entity.to_s,
      "entity_ids"    => entity_ids.to_s,
      "start_time"    => Api::Stats.to_time_s(start_time, granularity),
      "end_time"      => Api::Stats.to_time_s(end_time, granularity),
      "granularity"   => granularity.to_s,
      "metric_groups" => metrics.to_s,
      "placement"     => placement.to_s,
    }

    res = get("/#{api_version}/stats/accounts/#{account_id}", opts)
    return res
  end
end
