# frozen_string_literal: true

FactoryBot.define do
  factory :direction do
    factory :direction_one do
      direction   { 'Bring potatoes to a boil then strain and mash, mash, mash!!!!' }
      seq         { 1 }
      association :recipe
    end

    factory :direction_two do
      direction   { 'In another pot boil Kale and add to mased potatoes with water' }
      seq         { 2 }
      association :recipe
    end
  end
end
