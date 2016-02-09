# == Schema Information
#
# Table name: food_items
#
#  id                  :integer          not null, primary key
#  description         :text(65535)
#  price               :integer
#  allergy_information :text(65535)
#  included            :text(65535)
#  photo_updated_at    :datetime
#  photo_file_size     :integer
#  photo_content_type  :string(255)
#  photo_file_name     :string(255)
#  vendor_id           :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  title               :string(255)
#

require 'test_helper'

class FoodItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
