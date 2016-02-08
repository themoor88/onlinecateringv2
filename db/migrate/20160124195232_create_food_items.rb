class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.text :description
      t.text :allergy_information
      t.text :included

      t.timestamps null: false
    end
  end
end
