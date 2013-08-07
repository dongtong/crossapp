class AddAppIconColumnToApps < ActiveRecord::Migration
  	def self.up
	    add_attachment :apps, :app_icon
  	end

  	def self.down
    	remove_attachment :apps, :app_icon
  	end
end
