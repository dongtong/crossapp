#-*- coding: utf-8 -*-
class Admin::CategoriesController < AdminController
  before_filter :get_nav

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
  end

  def create
    @category = Category.new(params[:category])
    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_categories_index_url, notice: 'app was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to admin_categories_index_url, notice: 'app was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to admin_categories_index_url }
    end
  end

  private

  def get_nav
    @nav = "categories"
  end
end
