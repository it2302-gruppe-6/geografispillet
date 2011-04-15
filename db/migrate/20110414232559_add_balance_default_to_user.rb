class AddBalanceDefaultToUser < ActiveRecord::Migration
   def self.up
     remove_column :users, :balance
     add_column :users, :balance, :integer, :default => 0
   end
 
   def self.down
     remove_column :users, :balance
   end
 end
