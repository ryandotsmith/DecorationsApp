class TodoItemsController < ApplicationController
  before_filter :load_user, :only => [:edit,:update,:new,:create]

  def edit
    @todo_item = BaseTodoItem.find(params[:id]) 
  end

  def update
    @todo_item = BaseTodoItem.find(params[:id])
    @todo_item.update_attributes(params[:base_todo_item]) 
    redirect_to todo_lists_url(:user_id => @user.id)
  end

  def create
    @todo_list = BaseTodoList.find_by_basecamp_id(params[:todo_list][:basecamp_id])
    @todo_list = @user.base_todo_lists.build(params[:todo_list]) if @todo_list.nil?
    @todo_item = @todo_list.base_todo_items.build(params[:todo_item])
    if @todo_item.save! and @todo_list.save!

      respond_to do |format|
        format.js { render :action => "create.js.erb", :layout => false} 
      end
    end
  end
  #private
  def load_user
    user_id = params[:user_id]
    @user = User.find user_id unless user_id.nil?
    redirect_to new_session_url if  @user.nil?
  end

end
