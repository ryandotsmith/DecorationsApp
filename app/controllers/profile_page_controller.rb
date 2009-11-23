class ProfilePageController < ApplicationController

  def show
    if params[:id] 
      @user = User.find( params[:id] )
      @new_basecamp_account = BasecampAccount.new
    else
      redirect_to new_session_url unless params[:id]
    end
  end

end
