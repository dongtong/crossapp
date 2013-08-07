class AddPortraitPicAttachmentToPortraits < ActiveRecord::Migration
 	def self.up
	    add_attachment :portraits, :portrait_pic
  	end

  	def self.down
    	remove_attachment :portraits, :portrait_pic
  	end
end
