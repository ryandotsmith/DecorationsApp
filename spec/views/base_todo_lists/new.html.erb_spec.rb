require 'spec_helper'

describe "/base_todo_lists/new.html.erb" do
  include BaseTodoListsHelper

  before(:each) do
    assigns[:base_todo_list] = stub_model(BaseTodoList,
      :new_record? => true
    )
  end

  it "renders new base_todo_list form" do
    render

    response.should have_tag("form[action=?][method=post]", base_todo_lists_path) do
    end
  end
end
