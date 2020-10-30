# frozen_string_literal: true

FactoryBot.define do
  factory :tag do
    name { 'potato' }
    association :recipe
  end
end
