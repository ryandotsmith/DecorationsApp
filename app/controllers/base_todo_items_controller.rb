class BaseTodoItemsController < ApplicationController
  # GET /base_todo_items
  # GET /base_todo_items.xml
  def index
    @base_todo_items = BaseTodoItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @base_todo_items }
    end
  end

  # GET /base_todo_items/1
  # GET /base_todo_items/1.xml
  def show
    @base_todo_item = BaseTodoItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @base_todo_item }
    end
  end

  # GET /base_todo_items/new
  # GET /base_todo_items/new.xml
  def new
    @base_todo_item = BaseTodoItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @base_todo_item }
    end
  end

  # GET /base_todo_items/1/edit
  def edit
    @base_todo_item = BaseTodoItem.find(params[:id])
  end

  # POST /base_todo_items
  # POST /base_todo_items.xml
  def create
    @base_todo_item = BaseTodoItem.new(params[:base_todo_item])

    respond_to do |format|
      if @base_todo_item.save
        flash[:notice] = 'BaseTodoItem was successfully created.'
        format.html { redirect_to(@base_todo_item) }
        format.xml  { render :xml => @base_todo_item, :status => :created, :location => @base_todo_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @base_todo_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /base_todo_items/1
  # PUT /base_todo_items/1.xml
  def update
    @base_todo_item = BaseTodoItem.find(params[:id])

    respond_to do |format|
      if @base_todo_item.update_attributes(params[:base_todo_item])
        flash[:notice] = 'BaseTodoItem was successfully updated.'
        format.html { redirect_to(@base_todo_item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @base_todo_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /base_todo_items/1
  # DELETE /base_todo_items/1.xml
  def destroy
    @base_todo_item = BaseTodoItem.find(params[:id])
    @base_todo_item.destroy

    respond_to do |format|
      format.html { redirect_to(base_todo_items_url) }
      format.xml  { head :ok }
    end
  end
end
