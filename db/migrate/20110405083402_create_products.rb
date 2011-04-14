class CreateProducts < ActiveRecord::Migration
  def self.up
      drop_table :products
  end

  def self.down
    drop_table :products
  end
end
