require 'rails_helper'

describe '', type: :model do
  subject do
    user = User.new(name: 'matt', email: 'matt@test.com', password: 'matt123')
    recipe = user.recipes.new(
      user: user,
      name: 'Pizza', preparation_time: 25,
      cooking_time: 120, description: 'Classic Hawaiian Pizza!',
      public: true
    )
    recipe
  end

  describe 'validation tests' do
    it 'fails to create a new recipe without a user' do
      recipe = Recipe.new(
        name: 'Pizza', preparation_time: 25,
        cooking_time: 120, description: 'Classic Hawaiian Pizza!',
        public: true
      )
      expect(recipe).to be_invalid
    end
    it 'tests a recipe is invalid without a name' do
      expect(subject).to be_valid
      subject.name = ''
      expect(subject).to_not be_valid
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'tests a recipe name is less than 250 character' do
      expect(subject).to be_valid
      subject.name = 'a' * 25
      expect(subject).to_not be_valid
    end

    it 'test validation for description' do
      expect(subject).to be_valid
      subject.description = 'a' * 10
      expect(subject).to be_invalid
    end

    it 'test validation for public(boolean)' do
      expect(subject).to be_valid
      subject.public = nil
      expect(subject).to_not be_valid
    end
  end
end
