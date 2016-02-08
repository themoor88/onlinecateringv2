# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  description    :string(255)
#  payment_method :string(255)
#  customer_id    :integer
#  vendor_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
