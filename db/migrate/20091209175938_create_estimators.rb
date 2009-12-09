class CreateEstimators < ActiveRecord::Migration
  def self.up
    create_table :estimators do |t|
      t.integer :base_todo_item_id
      t.integer :time_to_completion
      t.integer :level_of_difficulty

      t.timestamps
    end
  end

  def self.down
    drop_table :estimators
  end
end
