class AdminController < ApplicationController
	layout 'backend'
  
  	before_filter :authenticate_user!
end