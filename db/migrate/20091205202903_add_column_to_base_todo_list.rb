class AddColumnToBaseTodoList < ActiveRecord::Migration
  def self.up
    rename_column :base_todo_lists, :base_id, :basecamp_id
  end

  def self.down
  end
end
