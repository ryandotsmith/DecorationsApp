require 'spec_helper'

describe TodoItemsController do

  describe "setting up an item" do
    it "should create a list if one does not exist" do
      @user = Factory :email_confirmed_user,
        :email                 => "r@a.com",
        :password              => "pass",
        :password_confirmation => "pass" 
      BaseTodoList.count.should eql(0)
      BaseTodoList.should_receive(:find_by_basecamp_id).with(123).and_return(nil) 
      post :create, :user_id => @user.id,
                    :todo_item => {:basecamp_id => 123}, 
                    :todo_list => {:basecamp_id => 123}
      BaseTodoList.count.should eql(1)
    end
  end

end
