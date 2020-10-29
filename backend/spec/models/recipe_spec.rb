# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'is valid' do
    expect(build(:recipe)).to be_valid
  end

  it 'is invalid with name not present' do
    recipe = build :recipe, name: nil
    expect(recipe).to_not be_valid
  end

  it 'is invalid because name exceeds the maximum character length' do
    recipe = build :recipe, name: 'a' * 101
    expect(recipe).to_not be_valid
  end

  it 'is invalid because description exceeds the maximum character length' do
    recipe = build :recipe, description: 'a' * 256
    expect(recipe).to_not be_valid
  end
end
