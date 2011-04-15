class AddBalanceToUser < ActiveRecord::Migration
  def self.up
      remove_column :users, :balance
  end

  def self.down
      remove_column :users, :balance
  end
end
