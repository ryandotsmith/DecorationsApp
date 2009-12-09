class CreateBaseTodoItems < ActiveRecord::Migration
  def self.up
    create_table :base_todo_items do |t|
      t.integer :base_todo_item
      t.integer :basecamp_id

      t.timestamps
    end
  end

  def self.down
    drop_table :base_todo_items
  end
end
