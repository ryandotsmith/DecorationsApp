ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'profile_page', :action => 'show'
  map.resource :profile_page, :controller => "profile_page"
  map.resources :basecamp_accounts
  map.resources :todo_lists
end
