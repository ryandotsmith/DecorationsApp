class TodoListsController < ApplicationController
  before_filter :load_user, :only => [:new]

  def index
  end

  def new
  end

  #private

  def load_user
    user_id = params[:user_id]
    @user = User.find user_id unless user_id.nil?
    redirect_to new_session_url if  @user.nil?
  end

end
