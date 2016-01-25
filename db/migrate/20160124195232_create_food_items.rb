class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :description
      t.string :allergy_information
      t.string :included

      t.timestamps null: false
    end
  end
end
