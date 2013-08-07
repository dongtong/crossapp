#-*- coding: utf-8 -*-
class Admin::DevicesController < AdminController
  before_filter :get_nav
  def index
    @devices = MobileDevice.all
  end

  def new
    @device = MobileDevice.new
  end

    def show
  end

  def create
    @device = MobileDevice.new(params[:mobile_device])
    respond_to do |format|
      if @device.save
        format.html { redirect_to admin_devices_index_url, notice: 'app was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @device = MobileDevice.find(params[:id])
  end

  def update
    @device = MobileDevice.find(params[:id])
    respond_to do |format|
      if @device.update_attributes(params[:mobile_device])
        format.html { redirect_to admin_devices_index_url, notice: 'app was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @device = MobileDevice.find(params[:id])
    @device.destroy

    respond_to do |format|
      format.html { redirect_to admin_devices_index_url }
    end
  end

  private

  def get_nav
    @nav = "devices"
  end
end
