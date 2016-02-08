class ChangeDataTypeToFoodItems < ActiveRecord::Migration
  def change
    change_column :food_items, :description, :text
    change_column :food_items, :allergy_information, :text
    change_column :food_items, :included, :text
  end
end
