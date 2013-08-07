class AddPlistColumnToApps < ActiveRecord::Migration
 	def self.up
	    add_attachment :apps, :plist_file
  	end

  	def self.down
    	remove_attachment :apps, :plist_file
  	end
end
