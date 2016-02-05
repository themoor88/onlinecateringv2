# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  description    :string(255)
#  payment_method :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Order < ActiveRecord::Base

  #------------------------------------------------------------------------------
  # Validations

  #------------------------------------------------------------------------------
  # Associations
  belongs_to :customer

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
