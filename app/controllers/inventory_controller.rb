class InventoryController < ApplicationController
  def index
    @inventory = current_user.inventories
  end

  def show
    # @foods = current_user.foods
    @inventory = Inventory.find(params[:id])
  end
  
  def destroy
  end
end
