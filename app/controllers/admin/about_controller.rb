#-*- coding: utf-8 -*-
class Admin::AboutController < AdminController
  before_filter :get_nav
  
  def index
    @about = About.first || About.create(content: "添加关于我们")
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(params[:about])
    if @about.save
      redirect_to admin_about_index_url, :notice => "关于我们添加成功!"
    else
      render action: "new"
    end
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update_attributes(params[:about])
      redirect_to admin_about_index_url, :notice => "关于我们保存成功!"
    else
      render action: "edit"
    end
  end

  private

  def get_nav
    @nav = "about"
  end
end
