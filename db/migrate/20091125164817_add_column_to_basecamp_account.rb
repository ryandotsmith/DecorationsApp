class AddColumnToBasecampAccount < ActiveRecord::Migration
  def self.up
    add_column :basecamp_accounts, :account_name, :string
  end

  def self.down
    remove_column :basecamp_accounts, :account_name, :string
  end
end
