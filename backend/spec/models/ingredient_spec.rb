require 'rails_helper'

RSpec.describe Ingredient, type: :model do
    it 'is valid' do
        expect(build :ingredient).to be_valid
    end

    it 'is invalid with name not present' do
        ingredient = build :ingredient, name: nil
        expect(ingredient).to_not be_valid
    end

    it 'is invalid with amount not present' do
        ingredient = build :ingredient, amount: nil
        expect(ingredient).to_not be_valid
    end

    it 'is invalid with amount less than 1' do
        ingredient = build :ingredient, amount: 0
        expect(ingredient).to_not be_valid
    end

    it 'is invalid with unit not present' do
        ingredient = build :ingredient, unit: nil
        expect(ingredient).to_not be_valid
    end

    it 'is invalid with unit empty string' do
        ingredient = build :ingredient, unit: ''
        expect(ingredient).to_not be_valid
    end

    it 'is invalid with unit exceeding maximum length' do
        ingredient = build :ingredient, unit: 'a' * 9
        expect(ingredient).to_not be_valid
    end

    it 'is invalid without recipe present' do
        ingredient = build :ingredient, recipe_id: nil
        expect(ingredient).to_not be_valid
    end

    it 'is invalid with name not unique within scope of recipe' do
        ingredient1 = create :ingredient
        ingredient2 = build :ingredient, recipe_id: ingredient1.recipe_id
        expect(ingredient2).to_not be_valid
    end
end