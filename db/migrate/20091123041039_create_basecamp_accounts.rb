class CreateBasecampAccounts < ActiveRecord::Migration
  def self.up
    create_table :basecamp_accounts do |t|
      t.integer :user_id
      t.string :username
      t.string :password
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :basecamp_accounts
  end
end
