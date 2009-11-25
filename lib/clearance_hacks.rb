Clearance::ConfirmationsController.class_eval do
  def url_after_create
    root_url( :id => current_user.id ) 
  end
end

Clearance::SessionsController.class_eval do
  def url_after_create
    root_url( :id => current_user.id ) 
  end
end
