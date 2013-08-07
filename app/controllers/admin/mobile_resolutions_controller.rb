#-*- coding: utf-8 -*-
class Admin::MobileResolutionsController < AdminController
  before_filter :get_nav
  def index
    @mobile_resolutions = MobileResolution.all
  end

  def new
    @mobile_resolution = MobileResolution.new
  end

    def show
  end

  def create
    @mobile_resolution = MobileResolution.new(params[:mobile_resolution])
    respond_to do |format|
      if @mobile_resolution.save
        format.html { redirect_to admin_mobile_resolutions_index_url, notice: 'app was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @mobile_resolution = MobileResolution.find(params[:id])
  end

  def update
    @mobile_resolution = MobileResolution.find(params[:id])
    respond_to do |format|
      if @mobile_resolution.update_attributes(params[:mobile_resolution])
        format.html { redirect_to admin_mobile_resolutions_index_url, notice: 'app was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @mobile_resolution = MobileResolution.find(params[:id])
    @mobile_resolution.destroy

    respond_to do |format|
      format.html { redirect_to admin_mobile_resolutions_index_url }
    end
  end

  private

  def get_nav
    @nav = "resolutions"
  end
end
