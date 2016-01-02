class Photo < ActiveRecord::Base

  has_attached_file :pic, :styles => { :large => "350x300>", :indexsize => "650x350" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

end
