class CreateBaseTodoLists < ActiveRecord::Migration
  def self.up
    create_table :base_todo_lists do |t|
      t.integer :base_id
      t.timestamps
    end
  end

  def self.down
    drop_table :base_todo_lists
  end
end
