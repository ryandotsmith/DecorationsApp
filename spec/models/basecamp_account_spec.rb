require 'spec_helper'

describe "connecting account" do

  it "should establish a connection" do
    bca = Factory(
      :basecamp_account,
      :account_name => "http://test.basecamphq.com",
      :username => "ryandotsmith",
      :password => "passw0rd"
    )
    Basecamp::Base.should_receive(:establish_connection!).with(
      "http://test.basecamphq.com",
      "ryandotsmith",
      "passw0rd",
      true
    )
    bca.connect!
  end

end



