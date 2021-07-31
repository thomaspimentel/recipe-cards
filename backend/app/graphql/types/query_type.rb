# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :recipes,
          [Types::RecipeType],
          null: false,
          description: "Returns a list of recipes"
    end

    def recipes
      Recipe.all
    end
  end
end
