require 'spec_helper'

describe "/base_todo_lists/show.html.erb" do
  include BaseTodoListsHelper
  before(:each) do
    assigns[:base_todo_list] = @base_todo_list = stub_model(BaseTodoList)
  end

  it "renders attributes in <p>" do
    render
  end
end
