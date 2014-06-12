class CreateRestaurantTable < ActiveRecord::Migration
  def change
    create_table :restaurant_tables do |t|
      t.string :restaurant_type
      t.string :food_type
    end
  end
end
