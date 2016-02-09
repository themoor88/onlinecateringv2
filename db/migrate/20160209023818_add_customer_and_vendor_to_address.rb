class AddCustomerAndVendorToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :customer_id, :integer, after: :street_name
    add_column :addresses, :vendor_id, :integer
  end
end
