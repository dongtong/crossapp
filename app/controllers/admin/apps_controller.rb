#-*- coding: utf-8 -*-
class Admin::AppsController < AdminController

  before_filter :get_nav
  before_filter :get_devise_info, :only => [:new, :edit]

  def index
    @apps = App.all
  end

  def new
    @app = App.new
  end

  def show
    @app = App.find(params[:id])
  end

  def create
    @app = Category.find(params[:app][:category_id]).apps.new(params[:app])
    respond_to do |format|
      if @app.save
        format.html { redirect_to admin_apps_show_path(@app), notice: '应用创建成功!' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @app = App.find(params[:id])
  end

  def update
    @app = App.find(params[:id])
    respond_to do |format|
      if @app.update_attributes(params[:app])
        format.html { redirect_to admin_apps_index_url, notice: '应用更新成功!' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy

    respond_to do |format|
      format.html { redirect_to admin_apps_index_url }
    end
  end

  def upload_app
    @app = App.find(params[:id])
  end

  def save_app_file
    @app = App.find(params[:id])
    App.transaction do
      respond_to do |format|
        if @app.update_attributes(params[:app]) && @app.update_plist_file_url(request.host, request.port)

          format.html { redirect_to admin_apps_index_url, notice: '安装文件上传成功' }
        else
          format.html { render action: "upload_app", notice: @app.errors}
        end
      end
    end
  end

  def upload_image
    @app = App.find(params[:id])
  end

  def upload
    result = false
    @app = App.find(params[:id])
    if params[:app][:portraits]
      Portrait.transaction do 
        params[:app][:portraits].each_pair do |key, val|
          portrait = @app.portraits.build(app_id: params[:id], portrait_pic: val)
          if portrait.save
            result = true
          else
            result = false
          end
        end
      end
    end

    if params[:app][:landscapes]
      Landscape.transaction do 
        params[:app][:landscapes].each_pair do |key, val|
          landscape = @app.landscapes.build(app_id: params[:id], landscape_pic: val)
          if landscape.save
            result = true
          else
            result = false
          end
        end
      end
    end

    if result
      redirect_to admin_apps_index_url, :notice => "Portrait上传成功!"
    else
      render action: "upload_image", :notice => "Portrait上传失败!"
    end
  end

  private 

  def get_nav
    @nav = "apps"
  end

  def get_devise_info
    @firmware_versions = MobileDevice.all.collect {|device| [device.name, device.name]}
    @resolutions = MobileResolution.all.collect {|resolution| [resolution.name, resolution.name]}
  end
end
