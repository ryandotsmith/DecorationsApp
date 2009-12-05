class BasecampAccount < ActiveRecord::Base
  belongs_to :user

  def connect!
    Basecamp::Base.establish_connection!(account_name, username, password, true)
  end

  def find_list(query=nil)
    connect!
    query ||= :all
    Basecamp::TodoList.find(query) 
  end

end
