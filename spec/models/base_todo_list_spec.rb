require 'spec_helper'

describe BaseTodoList do
  before(:each) do
    @valid_attributes = {
      :base_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    BaseTodoList.create!(@valid_attributes)
    
  end
end
