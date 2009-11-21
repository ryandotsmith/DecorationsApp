Given /^the following base_todo_lists:$/ do |base_todo_lists|
  BaseTodoList.create!(base_todo_lists.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) base_todo_list$/ do |pos|
  visit base_todo_lists_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following base_todo_lists:$/ do |expected_base_todo_lists_table|
  expected_base_todo_lists_table.diff!(table_at('table').to_a)
end
