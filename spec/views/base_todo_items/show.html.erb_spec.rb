require 'spec_helper'

describe "/base_todo_items/show.html.erb" do
  include BaseTodoItemsHelper
  before(:each) do
    assigns[:base_todo_item] = @base_todo_item = stub_model(BaseTodoItem)
  end

  it "renders attributes in <p>" do
    render
  end
end
