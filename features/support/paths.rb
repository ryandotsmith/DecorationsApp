module NavigationHelpers
  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
    when /the new base_todo_list page/
      new_base_todo_list_path

    when /the new base_todo_item page/
      new_base_todo_item_path

    when /the new base_todo_items page/
      new_base_todo_items_path

    when /the new todo_items page/
      new_todo_items_path

    when /the new todo_list page/
      new_todo_list_path

    when /the new delete page/
      new_delete_path
    when /the homepage/i
      root_path
    when /the sign up page/i
      new_user_path
    when /the sign in page/i
      new_session_path
    when /the password reset request page/i
      new_password_path
    when /my profile page/i
      profile_page_path(:id => @user.id)    
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end
 
World(NavigationHelpers)
