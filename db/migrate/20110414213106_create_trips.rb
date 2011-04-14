class CreateTrips < ActiveRecord::Migration
  def self.up
    create_table :trips do |t|
      t.integer :counts
      t.string :user_1
      t.string :user_2
      t.timestamps
    end
  end

  def self.down
    drop_table :trips
  end
end
