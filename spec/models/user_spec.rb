require 'rails_helper'

describe User, type: :model do
  describe 'Validaiton tests for user' do
    subject { User.new(name: 'Vladmir', email: 'vladmir@gmail.com', password: '123456') }
    before { subject.save }

  it 'Shuold have name present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'User should not be valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
    @user.name = ''
    expect(@user).to_not be_valid
  end
  end
end
