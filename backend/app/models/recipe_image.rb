# frozen_string_literal: true

# Recipe Image model
class RecipeImage
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :filename, type: String
  field :caption, type: String
  field :cover_photo, type: Boolean, default: false

  belongs_to :recipe

  validates :filename, presence: true
  validates :caption, length: { maximum: 150 }
end
