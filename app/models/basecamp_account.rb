class BasecampAccount < ActiveRecord::Base
  belongs_to :user

  def connect!
    Basecamp::Base.establish_connection!(account_name, username, password, true)
  end

  def find_list(id)
    connect!
    Basecamp::TodoList.find(id) 
  end

end
