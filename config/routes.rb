ActionController::Routing::Routes.draw do |map|
  map.resources :base_todo_items
  map.root :controller => 'profile_page', :action => 'show'
  map.resource :profile_page, :controller => "profile_page"
  map.resources :basecamp_accounts
end
