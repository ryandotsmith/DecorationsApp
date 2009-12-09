class TodoListsController < ApplicationController
  before_filter :load_user, :only => [:index,:new,:create]

  def index
    @todo_items = @user.base_todo_lists.collect {|list| list.base_todo_items}.flatten  
  end

  def new
  end

  def create
    @todo_list = @user.base_todo_lists.build(params[:todo_list])
    if @todo_list.save!
      @todo_list.fetch_items_from_basecamp!
      respond_to do |format|
        format.js {render :action => "create.js.erb", :layout => false} 
      end
    end
  end

  def destroy
    BaseTodoList.find(params[:id]).destroy
    redirect_to :back
  end

  def load_user
    user_id = params[:user_id]
    @user = User.find user_id unless user_id.nil?
    redirect_to new_session_url if  @user.nil?
  end

end
