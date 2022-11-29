require "../../spec_helper"

describe TwitterAds::Api::MediaLibrary do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.media_library("18ce54d4x5t")

  describe "#media_library" do
    it "returns Array(TwitterAds::MediaLibrary)" do
      api.size.should eq 1

      media_library = api.first
      media_library.media_key.should eq "13_909110614026444802"
      media_library.media_type.should eq "VIDEO"
      media_library.file_name.should eq "buildings https://t.co/xFdzrHM5QG"
      media_library.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
