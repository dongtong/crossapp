class Landscape < ActiveRecord::Base
  belongs_to :app
  attr_accessible :resolution, :landscape_pic, :app_id, :slided
  has_attached_file :landscape_pic, 
  					:styles => { :medium => "960x640>", :thumb => "480x320>" }, 
  					:default_url => "/images/:style/missing.png"
end
