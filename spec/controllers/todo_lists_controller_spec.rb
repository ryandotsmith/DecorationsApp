require 'spec_helper'

describe TodoListsController do
  
  describe "Loading a user on requests" do

    it "should redirect if the user does not exist" do
      get :new, :user_id => nil
      response.should redirect_to( new_session_url )
    end

    it "render the new template if the user was found" do
      @user = Factory :email_confirmed_user,
        :email                 => "r@a.com",
        :password              => "pass",
        :password_confirmation => "pass" 
      get :new, :user_id => @user.id
      response.should render_template("todo_lists/new")
    end
  end

end
