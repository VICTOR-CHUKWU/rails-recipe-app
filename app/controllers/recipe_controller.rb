class RecipeController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @foods = current_user.foods
    @recipe = Recipe.find(params[:id])
  end
  
  def destroy
  end
end
