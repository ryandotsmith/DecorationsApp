class AddUserIdToBaseTodoLists < ActiveRecord::Migration
  def self.up
    add_column :base_todo_lists, :user_id, :integer
  end

  def self.down
    remove_column :base_todo_lists, :user_id, :integer
  end
end
