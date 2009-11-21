require 'spec_helper'

describe "/base_todo_lists/edit.html.erb" do
  include BaseTodoListsHelper

  before(:each) do
    assigns[:base_todo_list] = @base_todo_list = stub_model(BaseTodoList,
      :new_record? => false
    )
  end

  it "renders the edit base_todo_list form" do
    render

    response.should have_tag("form[action=#{base_todo_list_path(@base_todo_list)}][method=post]") do
    end
  end
end
