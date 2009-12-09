require 'spec_helper'

describe "building a new item from basecamp" do
  it "should grab the id of the basecamp todo item" do
    BaseTodoList.new(:basecamp_id => "1").basecamp_id.should eql(1)
  end
end

#describe "looking for todo lists that are in basecamp" do
  #it "should filter lists by ones that are in basecamp" do
    #account = Factory(:basecamp_account)
    #tl1     = Factory(:base_todo_list)
    #tl2     = Factory(:base_todo_list, :basecamp_id => 11111111)
    #BaseTodoList.all_in_basecamp(account).should eql([tl1])
  #end
#end
