# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  city        :string(255)
#  country     :string(255)
#  street_name :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
