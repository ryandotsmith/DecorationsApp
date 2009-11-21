require 'spec_helper'

describe BaseTodoItem do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    BaseTodoItem.create!(@valid_attributes)
  end
end
