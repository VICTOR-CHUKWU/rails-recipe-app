require 'rails_helper'

describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Vladmir', email: 'vladmir@gmail.com', password: '123456')
  end

  it 'User should be valid' do
    expect(@user).to be_valid
  end

  it 'shows user name' do
    expect(@user.name).to eql('Vladmir')
  end

  it 'check user existence' do
    expect(@user).to be_valid
  end

  it 'check if user email exist' do
    expect(@user.email).to eql('vladmir@gmail.com')
  end

  it 'check if user has a password' do
    expect(@user.password).to eql('123456')
  end
end
