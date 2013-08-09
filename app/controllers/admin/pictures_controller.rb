#-*- coding: utf-8 -*-
class Admin::PicturesController < AdminController
  before_filter :get_nav
  def index
  	@pictures = (Portrait.order("slided asc") + Landscape.order("slided asc"))
    @pictures.sort!{|a, b| a.app.name <=> b.app.name}
  end

  def edit_portrait
	@portrait = Portrait.find(params[:id])
  end

  def update_portrait
  	@portrait = Portrait.find(params[:id])
  	if @portrait.update_attributes!(params[:portrait])
  		redirect_to admin_pictures_index_url, :notice => "轮播设置成功!"
  	else
  		render action: "edit_portait"
  	end
  end

  def edit_landscape
  	@landscape = Landscape.find(params[:id])
  end

  def update_landscape
  	@landscape = Landscape.find(params[:id])
  	if @landscape.update_attributes!(params[:landscape])
  		redirect_to admin_pictures_index_url, :notice => "轮播设置成功!"
  	else
  		render action: "edit_landscape"
  	end
  end

  private

  def get_nav
    @nav = "pictures"
  end
end
