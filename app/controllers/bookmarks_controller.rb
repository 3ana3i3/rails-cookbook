class BookmarksController < ApplicationController
  before_action :set_category, only: %i[new create]

  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
   @recipes = Recipe.where(category: @category.name)
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category

    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
  params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
