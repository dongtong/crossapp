#-*- coding: utf-8 -*-
class App < ActiveRecord::Base
  belongs_to :category
  has_many :portraits, :dependent => :destroy
  has_many :landscapes, :dependent => :destroy
  attr_accessible :plist_file, :installer_file, :published, :top_show, :app_icon,:description, :name, :category_id, :firmware_version, :resolution
  accepts_nested_attributes_for :portraits, :landscapes
  has_attached_file :app_icon, 
  					:styles => {:thumb => "72x72>", :medium => "120x120>"}, 
  					:default_url => "/images/:style/missing.png",
            :url => "/apps/:id/app_icon/:basename.:extension",
            :path => ":rails_root/public/apps/:id/app_icon/:basename.:extension"


  has_attached_file :plist_file,
				    :url => "/apps/:id/plist_file/:basename.:extension",
    				:path => ":rails_root/public/apps/:id/plist_file/:basename.:extension"

  #Like Pumbaa80 mentioned, since application/plist is not a standard mime-type it should be application/x-plist.
  has_attached_file :installer_file,
				    :url => "/apps/:id/installer_file/:basename.:extension",
    				:path => ":rails_root/public/apps/:id/installer_file/:basename.:extension"
    				  				  # 	:url => "/system/:hash.:extension",
				    # :hash_secret => "longSecretString"

  #validates_attachment :plist_file, :presence => true,
  #					:content_type => { :content_type => "application/octet-stream" }

  #validates_attachment :installer_file, :presence => true,
  #					:content_type => { :content_type => "application/octet-stream" }
  					#:size => { :in => 0..10.kilobytes }
  					#application/octet-stream .ipa


  def update_plist_file_url(host, port)
  	begin
	    file_handle = open("#{Rails.root}/public#{self.plist_file.url.split("?")[0]}")
	    # get document xml string and create Nokogiri object
	    doc = Nokogiri::XML(file_handle)
	    #dict_nodes = doc.xpath("//dict/array/dict/array/dict/")
	    ipa_url_node = doc.xpath("//dict/array/dict/array/dict/string")[1]
	    #new_node = ipa_url_node.dup
	    #new_node.content = self.installer_file.url
	    ipa_url_node.content = 'http://' + host + ':' + port.to_s + self.installer_file.url
	    File.open("#{Rails.root}/public#{self.plist_file.url.split("?")[0]}", 'w') do |plist|
	    	plist.puts(doc)
	    end
	    return true
	rescue => ex
		raise ex
	end
  end
end
