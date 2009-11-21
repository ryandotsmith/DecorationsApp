require 'spec_helper'

describe "/base_todo_items/edit.html.erb" do
  include BaseTodoItemsHelper

  before(:each) do
    assigns[:base_todo_item] = @base_todo_item = stub_model(BaseTodoItem,
      :new_record? => false
    )
  end

  it "renders the edit base_todo_item form" do
    render

    response.should have_tag("form[action=#{base_todo_item_path(@base_todo_item)}][method=post]") do
    end
  end
end
