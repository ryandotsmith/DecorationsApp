class BaseTodoItem < ActiveRecord::Base
  belongs_to :base_todo_list
  has_one :estimator, :dependent => :destroy
  accepts_nested_attributes_for :estimator

  def after_create
    create_estimator
  end

  def content 
    base_todo_list.user.basecamp_accounts.first.connect!
    Basecamp::TodoItem.find( basecamp_id ).content
  end

end
