class ChangeFieldNameToRestaurantName < ActiveRecord::Migration
  def change
    rename_column :restaurants, :restaurant_type, :restaurant_name
  end
end
