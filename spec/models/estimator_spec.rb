require 'spec_helper'

describe Estimator do
  before(:each) do
    @valid_attributes = {
      :base_todo_item_id => 1,
      :time_to_completion => 1,
      :level_of_difficulty => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Estimator.create!(@valid_attributes)
  end
end
