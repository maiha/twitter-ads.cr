require "../../spec_helper"

describe TwitterAds::Api::MediaLibrary do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#media_library" do
    it "returns Array(TwitterAds::MediaLibrary)" do
      media_libraries = client.media_library("18ce54d4x5t")
      media_libraries.size.should eq 1

      media_library = media_libraries.first
      media_library.media_id.should eq "908573900237180928"
      media_library.media_type.should eq "IMAGE"
      media_library.file_name.should eq "coffee https://t.co/4tcPU9XUon"
      media_library.account_id.should eq "18ce54d4x5t"
    end
  end
end
