require 'rails_helper'

RSpec.describe Direction, type: :model do
    it 'is valid' do
        expect(build :direction_one).to be_valid
    end

    it 'is invalid without description present' do
        expect(build :direction_one, direction: nil).to_not be_valid
    end

    it 'is invalid with description length too long' do
        expect(build :direction_one, direction: 'a' * 256).to_not be_valid
    end

    it 'is invalid without seq number present' do
        expect(build :direction_one, seq: nil).to_not be_valid
    end

    it 'is invalid with seq number less than 1' do
        expect(build :direction_one, seq: 0).to_not be_valid
    end

    it 'is invalid with seq number already taken' do
        direction = create :direction_one
        expect(build :direction_two, seq: direction.seq, recipe: direction.recipe).to_not be_valid
    end

    it 'is invalid without recipe present' do
        expect(build :direction_one, recipe_id: nil).to_not be_valid
    end
end