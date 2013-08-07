class Portrait < ActiveRecord::Base
  belongs_to :app
  attr_accessible :resolution, :portrait_pic, :app_id, :slided
  has_attached_file :portrait_pic, 
  					:styles => { :medium => "640x960>", :thumb => "320x480>" }, 
  					:default_url => "/images/:style/missing.png"
end
