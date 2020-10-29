# frozen_string_literal: true

# spec/factories/recipes.rb
FactoryBot.define do
  factory :recipe do
    trait :is_visible do
      is_visible { true }
    end

    trait :is_invisible do
      active { false }
    end

    name        { 'Caldo Verde' }
    description do
      'Portuguese kale soup, caldo verde, is something you’ll experience literally everywhere in Portugal,
                  from Lisbon’s trendiest restaurants to farmhouses scattered at the edge of villages.
                  Understandably so..'
    end
    image { 'test.png' }

    factory :active_event,      traits: [:is_active]
    factory :inactive_event,    traits: [:is_inactive]
  end
end
