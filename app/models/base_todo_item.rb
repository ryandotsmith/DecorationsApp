class BaseTodoItem < ActiveRecord::Base
  belongs_to :base_todo_list

  def content 
    base_todo_list.user.basecamp_accounts.first.connect!
    Basecamp::TodoItem.find( basecamp_id ).content
  end

end
