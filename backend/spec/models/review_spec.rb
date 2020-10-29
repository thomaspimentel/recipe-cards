require 'rails_helper'

RSpec.describe Review, type: :model do
    it 'is valid' do
        expect(build :review).to be_valid
    end

    it 'is invalid without a header while body is present' do
        expect(build :review, header: nil).to_not be_valid
    end

    it 'is invalid with a body and no header' do
        expect(build :review, body: nil).to_not be_valid
    end

    it 'is valid without body and header' do
        expect(build :review, body: nil, header: nil).to be_valid
    end

    it 'is invalid without a rating' do
        expect(build :review, rating: nil).to_not be_valid
    end

    it 'is invalid with rating score greater than max val' do
        expect(build :review, rating: 6).to_not be_valid
    end

    it 'is invalid with rating score less than min val' do
        expect(build :review, rating: -1).to_not be_valid
    end

    it 'is invalid with ip_address not present' do
        expect(build :review, ip_address: nil).to_not be_valid
    end

    it 'is invalid with ip_address string invalid' do
        expect(build :review, ip_address: "something something").to_not be_valid
    end
end