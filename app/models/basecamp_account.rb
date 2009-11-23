class BasecampAccount < ActiveRecord::Base
  belongs_to :user


  #private
  def connect!;end

end
