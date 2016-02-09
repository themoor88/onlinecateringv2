class AddPhotoToVendor < ActiveRecord::Migration
  def up
    add_attachment :vendors, :photo, after: :encrypted_password
  end

  def down
    remove_attachment :vendors, :photo
  end
end
