ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'todo_lists',:action => 'index'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
