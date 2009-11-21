require 'spec_helper'

describe BaseTodoListsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/base_todo_lists" }.should route_to(:controller => "base_todo_lists", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/base_todo_lists/new" }.should route_to(:controller => "base_todo_lists", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/base_todo_lists/1" }.should route_to(:controller => "base_todo_lists", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/base_todo_lists/1/edit" }.should route_to(:controller => "base_todo_lists", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/base_todo_lists" }.should route_to(:controller => "base_todo_lists", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/base_todo_lists/1" }.should route_to(:controller => "base_todo_lists", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/base_todo_lists/1" }.should route_to(:controller => "base_todo_lists", :action => "destroy", :id => "1") 
    end
  end
end
