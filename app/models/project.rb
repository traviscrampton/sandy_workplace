class Project < ActiveRecord::Base
  has_many :pictures, as: :item


  validates_presence_of :title
  validates_presence_of :description

  has_many :postquestions, dependent: :destroy
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :pictures
end
