require 'spec_helper'

describe "/base_todo_items/index.html.erb" do
  include BaseTodoItemsHelper

  before(:each) do
    assigns[:base_todo_items] = [
      stub_model(BaseTodoItem),
      stub_model(BaseTodoItem)
    ]
  end

  it "renders a list of base_todo_items" do
    render
  end
end
