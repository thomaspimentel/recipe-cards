# frozen_string_literal: true

# Ingredient Model
class Ingredient
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name, type: String
  field :amount, type: Integer
  field :unit, type: String
  field :extra_info, type: String

  belongs_to :recipe

  validates :name, presence: true,
                   uniqueness: {
                     scope: :recipe_id,
                     case_sensitive: false
                   }
  validates :amount,  presence: true,
                      numericality: { greater_than: 0 }
  validates :unit,    presence: true,
                      length: { maximum: 8 }
  validates :extra_info, length: { maximum: 255 }

  def to_s
    "#{amount} #{unit != 'units' ? unit : ''} #{name}"
  end
end
