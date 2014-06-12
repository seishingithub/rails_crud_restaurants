class ChangeTableNameToRestaurants < ActiveRecord::Migration
  def change
    rename_table :restaurant_tables, :restaurants
  end
end
