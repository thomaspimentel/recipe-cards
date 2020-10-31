# frozen_string_literal: true

FactoryBot.define do
  factory :recipe_image do
    filename    { 'someimage.jpeg' }
    caption     { 'Picture of soup! ' }
    cover_photo { false }
    association :recipe
  end
end
