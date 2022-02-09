class FoodController < ApplicationController
  def index
    @foods = current_user.foods
  end

  def create
  end

  def destroy
  end
end
