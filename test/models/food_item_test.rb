# == Schema Information
#
# Table name: food_items
#
#  id                  :integer          not null, primary key
#  description         :string(255)
#  allergy_information :string(255)
#  included            :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class FoodItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
