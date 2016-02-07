class AddVendorIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :vendor_id, :integer, after: :customer_id
  end
end
