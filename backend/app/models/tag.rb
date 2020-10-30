# frozen_string_literal: true

# Tag model
class Tag
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name, type: String

  belongs_to :recipe

  validates :name,  presence: true,
                    uniqueness: {
                      scope: :recipe_id,
                      case_sensitive: false
                    },
                    length: {
                      maximum: 50
                    }
end
