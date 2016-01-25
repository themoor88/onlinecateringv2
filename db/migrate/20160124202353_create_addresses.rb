class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :country
      t.string :street_name

      t.timestamps null: false
    end
  end
end
