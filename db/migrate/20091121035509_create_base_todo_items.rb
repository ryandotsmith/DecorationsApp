class CreateBaseTodoItems < ActiveRecord::Migration
  def self.up
    create_table :base_todo_items do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :base_todo_items
  end
end
