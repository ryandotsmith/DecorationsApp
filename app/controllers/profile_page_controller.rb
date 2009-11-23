class ProfilePageController < ApplicationController

  def show
    @user = User.find(params[:id]) if params[:id]
    @user ||= current_user
    if @user
      @new_basecamp_account = @user.basecamp_accounts.build
    else
      redirect_to new_session_url unless params[:id]
    end
  end

end
