module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
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

    
    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
