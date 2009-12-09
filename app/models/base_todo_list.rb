class BaseTodoList < ActiveRecord::Base
  has_many :base_todo_items, :dependent => :destroy
  belongs_to :user

  def fetch_items_from_basecamp!
    user.basecamp_accounts.first.connect!
    Basecamp::TodoList.find( basecamp_id ).todo_items.each do |item|
      self.base_todo_items.create(:basecamp_id => item.id ) 
    end
  end

  def name
    user.basecamp_accounts.first.connect!
    Basecamp::TodoList.find( basecamp_id ).name
  end

end
