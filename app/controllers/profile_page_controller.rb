class ProfilePageController < ApplicationController

  def edit 

  end

  def show
    if params[:id] 
      @user = User.find( params[:id] )
    else
      redirect_to new_session_url unless params[:id]
    end
  end

end
