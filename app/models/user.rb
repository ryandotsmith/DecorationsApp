class User < ActiveRecord::Base
  include Clearance::User
  has_many :basecamp_accounts
  has_many :base_todo_lists
  def confirm_email!
    self.email_confirmed    = true
    self.confirmation_token = nil
    save(false)
  end

end
