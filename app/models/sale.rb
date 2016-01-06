class Sale < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :material
  validates_presence_of :dimension
  validates_presence_of :price

  has_many :salequestions


  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
end
