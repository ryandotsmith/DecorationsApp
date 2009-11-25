class User < ActiveRecord::Base
  include Clearance::User
  has_many :basecamp_accounts

  def confirm_email!
    self.email_confirmed    = true
    self.confirmation_token = nil
    save(false)
  end

end
