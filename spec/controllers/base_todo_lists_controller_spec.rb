require 'spec_helper'

describe BaseTodoListsController do

  def mock_base_todo_list(stubs={})
    @mock_base_todo_list ||= mock_model(BaseTodoList, stubs)
  end

  describe "GET index" do
    it "assigns all base_todo_lists as @base_todo_lists" do
      BaseTodoList.stub!(:find).with(:all).and_return([mock_base_todo_list])
      get :index
      assigns[:base_todo_lists].should == [mock_base_todo_list]
    end
  end

  describe "GET show" do
    it "assigns the requested base_todo_list as @base_todo_list" do
      BaseTodoList.stub!(:find).with("37").and_return(mock_base_todo_list)
      get :show, :id => "37"
      assigns[:base_todo_list].should equal(mock_base_todo_list)
    end
  end

  describe "GET new" do
    it "assigns a new base_todo_list as @base_todo_list" do
      BaseTodoList.stub!(:new).and_return(mock_base_todo_list)
      get :new
      assigns[:base_todo_list].should equal(mock_base_todo_list)
    end
  end

  describe "GET edit" do
    it "assigns the requested base_todo_list as @base_todo_list" do
      BaseTodoList.stub!(:find).with("37").and_return(mock_base_todo_list)
      get :edit, :id => "37"
      assigns[:base_todo_list].should equal(mock_base_todo_list)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created base_todo_list as @base_todo_list" do
        BaseTodoList.stub!(:new).with({'these' => 'params'}).and_return(mock_base_todo_list(:save => true))
        post :create, :base_todo_list => {:these => 'params'}
        assigns[:base_todo_list].should equal(mock_base_todo_list)
      end

      it "redirects to the created base_todo_list" do
        BaseTodoList.stub!(:new).and_return(mock_base_todo_list(:save => true))
        post :create, :base_todo_list => {}
        response.should redirect_to(base_todo_list_url(mock_base_todo_list))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved base_todo_list as @base_todo_list" do
        BaseTodoList.stub!(:new).with({'these' => 'params'}).and_return(mock_base_todo_list(:save => false))
        post :create, :base_todo_list => {:these => 'params'}
        assigns[:base_todo_list].should equal(mock_base_todo_list)
      end

      it "re-renders the 'new' template" do
        BaseTodoList.stub!(:new).and_return(mock_base_todo_list(:save => false))
        post :create, :base_todo_list => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested base_todo_list" do
        BaseTodoList.should_receive(:find).with("37").and_return(mock_base_todo_list)
        mock_base_todo_list.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :base_todo_list => {:these => 'params'}
      end

      it "assigns the requested base_todo_list as @base_todo_list" do
        BaseTodoList.stub!(:find).and_return(mock_base_todo_list(:update_attributes => true))
        put :update, :id => "1"
        assigns[:base_todo_list].should equal(mock_base_todo_list)
      end

      it "redirects to the base_todo_list" do
        BaseTodoList.stub!(:find).and_return(mock_base_todo_list(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(base_todo_list_url(mock_base_todo_list))
      end
    end

    describe "with invalid params" do
      it "updates the requested base_todo_list" do
        BaseTodoList.should_receive(:find).with("37").and_return(mock_base_todo_list)
        mock_base_todo_list.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :base_todo_list => {:these => 'params'}
      end

      it "assigns the base_todo_list as @base_todo_list" do
        BaseTodoList.stub!(:find).and_return(mock_base_todo_list(:update_attributes => false))
        put :update, :id => "1"
        assigns[:base_todo_list].should equal(mock_base_todo_list)
      end

      it "re-renders the 'edit' template" do
        BaseTodoList.stub!(:find).and_return(mock_base_todo_list(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested base_todo_list" do
      BaseTodoList.should_receive(:find).with("37").and_return(mock_base_todo_list)
      mock_base_todo_list.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the base_todo_lists list" do
      BaseTodoList.stub!(:find).and_return(mock_base_todo_list(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(base_todo_lists_url)
    end
  end

end
