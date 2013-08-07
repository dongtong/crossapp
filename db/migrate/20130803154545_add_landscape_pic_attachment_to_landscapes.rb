class AddLandscapePicAttachmentToLandscapes < ActiveRecord::Migration
  	def self.up
	    add_attachment :landscapes, :landscape_pic
  	end

  	def self.down
    	remove_attachment :landscapes, :landscape_pic
  	end
end
