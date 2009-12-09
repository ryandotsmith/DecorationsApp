require 'spec_helper'

describe "building a new item from basecamp" do
  it "should grab the id of the basecamp todo item" do
    BaseTodoList.new(:basecamp_id => "1").basecamp_id.should eql(1)
  end
end

