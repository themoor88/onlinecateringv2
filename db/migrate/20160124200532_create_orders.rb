class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :description
      t.string :payment_method

      t.timestamps null: false
    end
  end
end
