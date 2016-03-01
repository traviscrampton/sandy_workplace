class Sale < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :material
  validates_presence_of :dimension
  validates_presence_of :price

  has_many :pictures, as: :item

  has_many :itemquestions, as: :item


  accepts_nested_attributes_for :pictures
end
