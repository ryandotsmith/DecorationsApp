class BasecampAccount < ActiveRecord::Base
  belongs_to :user

  #private
  def connect!
    Basecamp::Base.establish_connection!(account_name, username, password)
  end

end
