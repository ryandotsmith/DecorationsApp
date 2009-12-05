require 'spec_helper'

def build_basecamp_account 
  Factory(
    :basecamp_account,
    :account_name => "http://test.basecamphq.com",
    :username => "ryandotsmith",
    :password => "passw0rd"
  )
end

describe "connecting account" do
  before(:each){ @bca = build_basecamp_account }
  it "should establish a connection" do
    Basecamp::Base.should_receive(:establish_connection!).with(
      "http://test.basecamphq.com",
      "ryandotsmith",
      "passw0rd",
      true
    )
    @bca.connect!
  end

end

describe "finding a list" do
  before(:each){ @bca = build_basecamp_account }
  it "should grab all of the lists if no ID is specified" do
    Basecamp::TodoList.should_receive(:find).with(:all)
    @bca.find_list
  end
end

