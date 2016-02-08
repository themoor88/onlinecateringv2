class AddColumnsToFoodItem < ActiveRecord::Migration
  def change
    add_column :food_items, :title, :string, after: :id
    add_column :food_items, :price, :integer, after: :description
  end
end
