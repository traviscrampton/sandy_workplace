class Photo < ActiveRecord::Base

  has_attached_file :pic, :styles => { :large =>"600x450", :indexsize => "650x350", :thumb => "100x100" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

belongs_to :sale

end
