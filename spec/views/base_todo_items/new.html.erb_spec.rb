require 'spec_helper'

describe "/base_todo_items/new.html.erb" do
  include BaseTodoItemsHelper

  before(:each) do
    assigns[:base_todo_item] = stub_model(BaseTodoItem,
      :new_record? => true
    )
  end

  it "renders new base_todo_item form" do
    render

    response.should have_tag("form[action=?][method=post]", base_todo_items_path) do
    end
  end
end
