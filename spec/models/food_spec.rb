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
    expect(@soya_beans.measurement_unit).to eql('kg')
  end

  it 'price of food is present' do
    expect(@soya_beans.price).to eql 3
  end

  it 'validates the food name match' do
    expect(@soya_beans.name).to eql('Soya Beans')
  end
end
