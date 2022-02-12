class FoodController < ApplicationController
  def index
    @foods = current_user.foods
  end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.new(food_params)
    if @food.save
      flash[:success] = 'you have sucssfully created new food item'
      redirect_to root_path
    else
      flash.now[:error] = 'Error.... food could not be added'
      render :new

    end
  end

  def destroy
    @food = current_user.foods.find(params[:id])
    @food.destroy!
    flash[:success] = 'You have deleted this food item successfuly!'
    redirect_to root_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
# @todo = .new(params.require(:todo).permit(:title, :description, :due_date))
