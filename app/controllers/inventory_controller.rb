class InventoryController < ApplicationController
  def index
    @inventory = current_user.inventories
  end

  def show
    @foods = current_user.foods
    @inventory = Inventory.find(params[:id])
    @user = current_user
  end
  
  def destroy
    @inventory = current_user.inventories.find(params[:id])
    @inventory.destroy!
    flash[:success] = 'You have deleted this inventory successfuly!'
    redirect_to inventory_index_path
  end
end
