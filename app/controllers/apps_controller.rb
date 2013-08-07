class AppsController < ApplicationController
  def index
  	@apps = params[:category].blank? ? App.where('published=?', true) : Category.find_by_name(params[:category]).apps
  	@portrait_pics = Portrait.where('slided=?', true) 
  	@landscape_pics =  Landscape.where('slided=?', true)
  	@top_show_apps = App.where('top_show=?', true)
  end

  def show
  	@app = App.find(params[:id])
  end
end
