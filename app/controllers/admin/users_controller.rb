#-*- coding: utf-8 -*-
class Admin::UsersController < AdminController
  before_filter :get_nav

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to admin_users_show_url(@user), :notice => "添加用户成功!"
    else
      render action: new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to admin_users_show_url(@user), :notice => "更新用户成功!"
    else
      render action: edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_index_url, :notice => "删除用户成功!"
  end

  private

  def get_nav
    @nav = "users"
  end
end
