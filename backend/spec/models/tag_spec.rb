# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'valid objects' do
    it 'is valid' do
      expect(build(:tag)).to be_valid
    end
  end

  describe 'invalid objects' do
    it 'is invalid without a tag' do
      expect(build(:tag, name: nil)).to_not be_valid
    end

    it 'is invalid with tag greater than max length' do
      expect(build(:tag, name: 'a' * 51)).to_not be_valid
    end

    it 'is invalid without a recipe' do
      expect(build(:tag, recipe_id: nil)).to_not be_valid
    end

    it 'is invalid with a tag name already belonging to recipe' do
      tag = create :tag
      expect(build(:tag, recipe_id: tag.recipe_id)).to_not be_valid
    end
  end
end
