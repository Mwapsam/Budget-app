# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @user = current_user
    @categories = current_user.categories.includes(:payments).order(id: :desc)
  end

  def most_recent_list
    @user = current_user
    @categories = Category.all
  end

  def most_ancient_list
    @user = current_user
    @categories = Category.all
  end

  def new
    @catagory = Category.new
  end

  def edit; end

  def create
    add_category = current_user.categories.new(category_params)
    if add_category.save
      redirect_to categories_path, notice: 'Category was successfully added'
    else
      render :new, alert: 'Failed to add category'
    end
  end

  def destroy
    @user = current_user
    @category = Category.find(params[:id])

    if @category.destroy
      redirect_to categories_path, notice: 'Category was successfully deleted'
    else
      render :index, alert: 'Failed to delete category'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path, notice: 'Category was successfully updated'
    else
      render :edit, alert: 'Failed to update category'
    end
  end

  def category_params
    params.permit(:name, :icon)
  end
end
