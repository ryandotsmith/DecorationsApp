class BaseTodoListsController < ApplicationController
  # GET /base_todo_lists
  # GET /base_todo_lists.xml
  def index
    @base_todo_lists = BaseTodoList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @base_todo_lists }
    end
  end

  # GET /base_todo_lists/1
  # GET /base_todo_lists/1.xml
  def show
    @base_todo_list = BaseTodoList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @base_todo_list }
    end
  end

  # GET /base_todo_lists/new
  # GET /base_todo_lists/new.xml
  def new
    @base_todo_list = BaseTodoList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @base_todo_list }
    end
  end

  # GET /base_todo_lists/1/edit
  def edit
    @base_todo_list = BaseTodoList.find(params[:id])
  end

  # POST /base_todo_lists
  # POST /base_todo_lists.xml
  def create
    @base_todo_list = BaseTodoList.new(params[:base_todo_list])

    respond_to do |format|
      if @base_todo_list.save
        flash[:notice] = 'BaseTodoList was successfully created.'
        format.html { redirect_to(@base_todo_list) }
        format.xml  { render :xml => @base_todo_list, :status => :created, :location => @base_todo_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @base_todo_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /base_todo_lists/1
  # PUT /base_todo_lists/1.xml
  def update
    @base_todo_list = BaseTodoList.find(params[:id])

    respond_to do |format|
      if @base_todo_list.update_attributes(params[:base_todo_list])
        flash[:notice] = 'BaseTodoList was successfully updated.'
        format.html { redirect_to(@base_todo_list) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @base_todo_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /base_todo_lists/1
  # DELETE /base_todo_lists/1.xml
  def destroy
    @base_todo_list = BaseTodoList.find(params[:id])
    @base_todo_list.destroy

    respond_to do |format|
      format.html { redirect_to(base_todo_lists_url) }
      format.xml  { head :ok }
    end
  end
end
