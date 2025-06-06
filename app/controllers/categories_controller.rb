class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
   @category = Category.find(params[:id])
   @recipes = @category.recipes
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render :new
    end
  end
  def destroy
  @category = Category.find(params[:id])
  @category.destroy
  redirect_to categories_path, notice: 'Category was successfully deleted.'
end

  private

  def category_params
    params.require(:category).permit(:name, :photo)
  end
end
