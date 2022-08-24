require "../spec_helper"

describe TwitterAds::Client do
  describe "#authorized?" do
    it "returns true when all credential values exist" do
      client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
      client.authorized?.should eq(true)
    end

    it "returns false when any credential values don't exist" do
      client = TwitterAds::Client.new("CK", "CS", "AT", "")
      client.authorized?.should eq(false)
    end
  end

  describe "#switch_domain" do
    client = TwitterAds::Client.new("CK", "CS", "AT", "")
    client.dryrun = true

    it "should be true in default" do
      client.switch_domain.should be_true
    end

    context "(true)" do
      it "connects to api.twitter.com when statuses_lookup" do
        expect_raises(TwitterAds::Dryrun, %r{https://api.twitter.com/}) do
          client.statuses_lookup(id: "1")
        end
      end

      it "connects to ads-api.twitter.com when accounts" do
        expect_raises(TwitterAds::Dryrun, %r{https://ads-api.twitter.com/}) do
          client.accounts(count: 1)
        end
      end

      it "connects to api.twitter.com when get(/2/ .. /4/)" do
        expect_raises(TwitterAds::Dryrun, %r{https://api.twitter.com/}) do
          client.get("/2/tweets/search/recent")
        end

        expect_raises(TwitterAds::Dryrun, %r{https://api.twitter.com/}) do
          client.get("/3/tweets/search/recent")
        end

        expect_raises(TwitterAds::Dryrun, %r{https://api.twitter.com/}) do
          client.get("/4/tweets/search/recent")
        end
      end
    end

    context "(false)" do
      it "connects to ads-api.twitter.com when statuses_lookup" do
        client.switch_domain = false
        expect_raises(TwitterAds::Dryrun, %r{https://ads-api.twitter.com/}) do
          client.statuses_lookup(id: "1")
        end
      end

      it "connects to ads-api.twitter.com when accounts" do
        client.switch_domain = false
        expect_raises(TwitterAds::Dryrun, %r{https://ads-api.twitter.com/}) do
          client.accounts(count: 1)
        end
      end
    end

    context "(when custom url is set)" do
      it "respects the domain in all cases" do
        client.url = "http://localhost"
        expect_raises(TwitterAds::Dryrun, %r{http://localhost/}) do
          client.switch_domain = false
          client.statuses_lookup(id: "1")
        end
        expect_raises(TwitterAds::Dryrun, %r{http://localhost/}) do
          client.switch_domain = true
          client.statuses_lookup(id: "1")
        end
        expect_raises(TwitterAds::Dryrun, %r{http://localhost/}) do
          client.switch_domain = true
          client.accounts(count: 1)
        end
      end
    end
  end

  describe "uses OAuth1/2 automatically by endpoints" do
    context "(OAuth 1.0a)" do
      it "calls api.twitter.com with OAuth 1.0a when the endpoint starts with /2" do
        client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
        client.dryrun = true

        dryrun = expect_raises(TwitterAds::Dryrun){ client.get("/2/tweets/search/recent") }
        dryrun.uri.host.should eq("api.twitter.com")
        dryrun.req.headers["Authorization"].should match(/oauth_version="1.0"/)
      end

      it "calls ads-api.twitter.com with OAuth 1.0a when the endpoint starts with /11" do
        client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
        client.dryrun = true

        dryrun = expect_raises(TwitterAds::Dryrun){ client.get("/11/accounts") }
        dryrun.uri.host.should eq("ads-api.twitter.com")
        dryrun.req.headers["Authorization"].should match(/oauth_version="1.0"/)
      end
    end

    context "(OAuth 2)" do
      it "calls api.twitter.com with OAuth 2 when the endpoint starts with /2 and oauth2_standard is set" do
        client = TwitterAds::Client.new("CK", "CS", "AT", "AS", "BT")
        client.oauth2_standard = true
        client.dryrun = true

        dryrun = expect_raises(TwitterAds::Dryrun){ client.get("/2/tweets/search/recent") }
        dryrun.uri.host.should eq("api.twitter.com")
        dryrun.req.headers["Authorization"].should eq("Bearer BT")
      end

      it "calls ads-api.twitter.com with OAuth 2 when the endpoint starts with /11 and oauth2_ads is set" do
        client = TwitterAds::Client.new("CK", "CS", "AT", "AS", "BT")
        client.oauth2_ads = true
        client.dryrun = true

        dryrun = expect_raises(TwitterAds::Dryrun){ client.get("/11/accounts") }
        dryrun.uri.host.should eq("ads-api.twitter.com")
        dryrun.req.headers["Authorization"].should eq("Bearer BT")
      end

      it "raises an error when the endpoint starts with /2 and no bearer token is set" do
        client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
        client.oauth2_standard = true
        client.dryrun = true

        expect_raises(Exception, /OAuth2 is requested, but Bearer token is not set./) do
          client.get("/2/tweets/search/recent")
        end
      end
    end
  end
end
