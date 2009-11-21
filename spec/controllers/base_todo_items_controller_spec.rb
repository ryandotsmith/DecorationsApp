require 'spec_helper'

describe BaseTodoItemsController do

  def mock_base_todo_item(stubs={})
    @mock_base_todo_item ||= mock_model(BaseTodoItem, stubs)
  end

  describe "GET index" do
    it "assigns all base_todo_items as @base_todo_items" do
      BaseTodoItem.stub!(:find).with(:all).and_return([mock_base_todo_item])
      get :index
      assigns[:base_todo_items].should == [mock_base_todo_item]
    end
  end

  describe "GET show" do
    it "assigns the requested base_todo_item as @base_todo_item" do
      BaseTodoItem.stub!(:find).with("37").and_return(mock_base_todo_item)
      get :show, :id => "37"
      assigns[:base_todo_item].should equal(mock_base_todo_item)
    end
  end

  describe "GET new" do
    it "assigns a new base_todo_item as @base_todo_item" do
      BaseTodoItem.stub!(:new).and_return(mock_base_todo_item)
      get :new
      assigns[:base_todo_item].should equal(mock_base_todo_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested base_todo_item as @base_todo_item" do
      BaseTodoItem.stub!(:find).with("37").and_return(mock_base_todo_item)
      get :edit, :id => "37"
      assigns[:base_todo_item].should equal(mock_base_todo_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created base_todo_item as @base_todo_item" do
        BaseTodoItem.stub!(:new).with({'these' => 'params'}).and_return(mock_base_todo_item(:save => true))
        post :create, :base_todo_item => {:these => 'params'}
        assigns[:base_todo_item].should equal(mock_base_todo_item)
      end

      it "redirects to the created base_todo_item" do
        BaseTodoItem.stub!(:new).and_return(mock_base_todo_item(:save => true))
        post :create, :base_todo_item => {}
        response.should redirect_to(base_todo_item_url(mock_base_todo_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved base_todo_item as @base_todo_item" do
        BaseTodoItem.stub!(:new).with({'these' => 'params'}).and_return(mock_base_todo_item(:save => false))
        post :create, :base_todo_item => {:these => 'params'}
        assigns[:base_todo_item].should equal(mock_base_todo_item)
      end

      it "re-renders the 'new' template" do
        BaseTodoItem.stub!(:new).and_return(mock_base_todo_item(:save => false))
        post :create, :base_todo_item => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested base_todo_item" do
        BaseTodoItem.should_receive(:find).with("37").and_return(mock_base_todo_item)
        mock_base_todo_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :base_todo_item => {:these => 'params'}
      end

      it "assigns the requested base_todo_item as @base_todo_item" do
        BaseTodoItem.stub!(:find).and_return(mock_base_todo_item(:update_attributes => true))
        put :update, :id => "1"
        assigns[:base_todo_item].should equal(mock_base_todo_item)
      end

      it "redirects to the base_todo_item" do
        BaseTodoItem.stub!(:find).and_return(mock_base_todo_item(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(base_todo_item_url(mock_base_todo_item))
      end
    end

    describe "with invalid params" do
      it "updates the requested base_todo_item" do
        BaseTodoItem.should_receive(:find).with("37").and_return(mock_base_todo_item)
        mock_base_todo_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :base_todo_item => {:these => 'params'}
      end

      it "assigns the base_todo_item as @base_todo_item" do
        BaseTodoItem.stub!(:find).and_return(mock_base_todo_item(:update_attributes => false))
        put :update, :id => "1"
        assigns[:base_todo_item].should equal(mock_base_todo_item)
      end

      it "re-renders the 'edit' template" do
        BaseTodoItem.stub!(:find).and_return(mock_base_todo_item(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested base_todo_item" do
      BaseTodoItem.should_receive(:find).with("37").and_return(mock_base_todo_item)
      mock_base_todo_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the base_todo_items list" do
      BaseTodoItem.stub!(:find).and_return(mock_base_todo_item(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(base_todo_items_url)
    end
  end

end
