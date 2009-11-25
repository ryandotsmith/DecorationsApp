require 'spec_helper'

describe "requiring a user id to show a profile page" do

  controller_name :profile_page

  it "should redirect to the login screen if a user is not passed in the params" do
    parameters = {}
    get :show, parameters
    response.should redirect_to(new_session_url)
  end

end

