# == Schema Information
#
# Table name: food_items
#
#  id                  :integer          not null, primary key
#  description         :text(65535)
#  price               :integer
#  allergy_information :text(65535)
#  included            :text(65535)
#  vendor_id           :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  title               :string(255)
#

class FoodItem < ActiveRecord::Base

  #------------------------------------------------------------------------------
  # Validations
  validates_presence_of :allergy_information, :included, :description

  #------------------------------------------------------------------------------
  # Associations
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
