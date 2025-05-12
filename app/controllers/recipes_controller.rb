class RecipesController < ApplicationController
#   before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  def index
    @recipes = Recipe.all
  end

  def show
  end
end
