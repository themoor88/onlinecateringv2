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

class Order < ActiveRecord::Base

  #------------------------------------------------------------------------------
  # Validations

  #------------------------------------------------------------------------------
  # Associations
  belongs_to :customer
  belongs_to :vendor

  #------------------------------------------------------------------------------
  # Enumerations

  #------------------------------------------------------------------------------
  # Callbacks

  #------------------------------------------------------------------------------
  # Scopes

  #------------------------------------------------------------------------------
  # Class methods

  #------------------------------------------------------------------------------
  # Instance methods

  #------------------------------------------------------------------------------
  protected

  #------------------------------------------------------------------------------
  private

  #--------------------------------------
  # Validation Methods
end
