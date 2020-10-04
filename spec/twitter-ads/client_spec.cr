require "../spec_helper"

describe TwitterAds::Client do
  describe "#api_version" do
    it "returns 8 in default" do
      client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
      client.api_version.should eq("8")
      client.accounts.req.to_s.should eq("GET /8/accounts?count=200")
    end

    it "accepts any string for version" do
      client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
      client.api_version = "7"
      client.accounts.req.to_s.should eq("GET /7/accounts?count=200")
    end
  end

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
end
