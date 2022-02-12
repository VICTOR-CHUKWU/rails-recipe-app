class RecipeController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @foods = current_user.foods
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    if @recipe.save
      flash[:success] = "you have sucssfully created new recipe item"  
      redirect_to recipe_index_path
    else 
      flash.now[:error]= 'Error.... recipe could not be added'
      render :new

    end
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

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description)
  end
end
