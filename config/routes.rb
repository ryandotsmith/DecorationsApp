ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'sessions',:action => 'new'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
