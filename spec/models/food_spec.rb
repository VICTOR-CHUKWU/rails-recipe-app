require 'rails_helper'

describe Food, type: :model do
  before(:each) do
    @user = User.create!(name: 'Vladmir', email: 'vladmir@gmail.com', password: '123456')
    @soya_beans = @user.foods.create!(name: 'Soya Beans', price: 3.5, measurement_unit: 'kg')
  end

  it 'Food should be valid' do
    expect(@soya_beans).to be_valid
    end

  it 'validates the presence of the measurement unit nil' do
      @food.measurement_unit = nil
      expect(@food).to_not be_valid
    end

  it 'validates the presence of the price nil' do
      @food.price = nil
      expect(@food).to_not be_valid
    end

  it 'validates the presence of the user nil' do
      @food.user_id = nil
      expect(@food).to_not be_valid
    end

    it 'validates the presence of the user nil' do
      @food.user_id = nil
      expect(@food).to_not be_valid
      end

  it 'validates the food name match' do
      expect(@food.name).to eq "Food 1"
    end
end
