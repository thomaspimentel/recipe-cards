module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :is_visible, String, null: false
    field :image, String, null: false
  end
end
