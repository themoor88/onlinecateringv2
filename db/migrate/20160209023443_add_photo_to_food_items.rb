class AddPhotoToFoodItems < ActiveRecord::Migration
  def up
    add_attachment :food_items, :photo, after: :included
  end

  def down
    remove_attachment :food_items, :photo
  end
end
