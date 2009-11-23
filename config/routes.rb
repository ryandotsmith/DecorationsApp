ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'profile_page', :action => 'show'
  map.resource :profile_page, :controller => "profile_page"

end
