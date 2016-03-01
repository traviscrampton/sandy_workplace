class Project < ActiveRecord::Base
  has_many :pictures, as: :item
  has_many :itemquestions, as: :item


  validates_presence_of :title
  validates_presence_of :description

  accepts_nested_attributes_for :pictures
end
