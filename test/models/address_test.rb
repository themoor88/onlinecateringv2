# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  city        :string(255)
#  country     :string(255)
#  street_name :string(255)
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  vendor_id   :integer
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
