class AddVendorIdToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :vendor_id, :integer, after: :included
  end
end
