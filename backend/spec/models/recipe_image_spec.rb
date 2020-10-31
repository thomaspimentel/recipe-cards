# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipeImage, type: :model do
  it 'is valid' do
    expect(build(:recipe_image)).to be_valid
  end

  it 'sets cover_photo to false if value not provided' do
    expect(create(:recipe_image, cover_photo: false).cover_photo).to eq(false)
  end

  it 'is invalid without a filename' do
    expect(build(:recipe_image, filename: nil)).to_not be_valid
  end

  it 'is invalid with a caption string beyond max length' do
    expect(build(:recipe_image, caption: 'a' * 151)).to_not be_valid
  end
end
