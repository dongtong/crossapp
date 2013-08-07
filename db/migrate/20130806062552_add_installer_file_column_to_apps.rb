class AddInstallerFileColumnToApps < ActiveRecord::Migration
  	def self.up
	    add_attachment :apps, :installer_file
  	end

  	def self.down
    	remove_attachment :apps, :installer_file
  	end
end
