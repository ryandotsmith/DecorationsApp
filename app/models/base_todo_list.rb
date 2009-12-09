class BaseTodoList < ActiveRecord::Base

  belongs_to :user
  #def self.all_in_basecamp( account )
    #all.select {|tl|  account.find_list(tl.basecamp_id); g tl.basecamp_id }
  #end

end
