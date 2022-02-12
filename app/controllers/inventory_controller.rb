class InventoryController < ApplicationController
  def index
    @inventory = current_user.inventories
  end

  def show
    @inventories = current_user.inventories
    @inventory = Inventory.find(params[:id])
    @user = current_user
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = current_user.inventories.new(inventory_params)
    if @inventory.save
      flash[:success] = 'you have sucssfully created new food item'
      redirect_to inventory_index_path
    else
      flash.now[:error] = 'Error.... food could not be added'
      render :new

    end
  end

  def destroy
    @inventory = current_user.inventories.find(params[:id])
    @inventory.destroy!
    flash[:success] = 'You have deleted this inventory successfuly!'
    redirect_to inventory_index_path
  end

  private

  def inventory_params
    params.require(:inventory).permit(:name)
  end
end
