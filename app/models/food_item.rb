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
