require 'spec_helper'

describe "/base_todo_lists/index.html.erb" do
  include BaseTodoListsHelper

  before(:each) do
    assigns[:base_todo_lists] = [
      stub_model(BaseTodoList),
      stub_model(BaseTodoList)
    ]
  end

  it "renders a list of base_todo_lists" do
    render
  end
end
