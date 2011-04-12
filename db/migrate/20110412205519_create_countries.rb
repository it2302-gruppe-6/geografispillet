class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name
      t.integer :population
      t.integer :area
      t.string :currency
      t.string :capital
      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
