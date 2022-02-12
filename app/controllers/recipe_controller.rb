class RecipeController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @foods = current_user.foods
    @recipe = Recipe.find(params[:id])
  end

  def public
    @recipes =  current_user.recipes.where(public: true)
  end
  
  def destroy
    @recipe= current_user.recipes.find(params[:id])
    @recipe.destroy!
    flash[:success] = 'You have deleted this recipe item successfuly!'
    redirect_to recipe_index_path
  end
end
