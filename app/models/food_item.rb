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

class FoodItem < ActiveRecord::Base

  #------------------------------------------------------------------------------
  # Validations
  validates_presence_of :allergy_information, :included, :description

  #------------------------------------------------------------------------------
  # Associations
  belongs_to :vendor

  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
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
