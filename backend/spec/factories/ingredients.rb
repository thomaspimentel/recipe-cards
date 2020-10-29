# frozen_string_literal: true

# spec/factories/ingredients.rb
FactoryBot.define do
  factory :ingredient do
    name { 'Potatoes' }
    amount          { 8 }
    unit            { 'units' }
    extra_info      { 'Use Yukon Gold for best results!' }
    association     :recipe
  end
end
