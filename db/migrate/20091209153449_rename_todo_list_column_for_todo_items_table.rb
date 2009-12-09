class RenameTodoListColumnForTodoItemsTable < ActiveRecord::Migration
  def self.up
    rename_column :base_todo_items, :base_todo_item, :base_todo_list_id
  end

  def self.down
  end
end
