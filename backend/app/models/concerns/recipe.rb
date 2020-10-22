class Recipe
    include Mongoid::Document
    include Mongoid::Timestamps::Created
    include Mongoid::Timestamps::Updated
    # Recipes attributes
    # - name
    # - description
    # - image
    # - ingredients -> ref
    # - directions -> ref
    # - ratings -> ref
    # - comments -> ref
    # - tags -> ref

    field :name, type: String
    field :image, type: String
    field :description, type: String
    field :is_visible, type: Boolean

    validates :name, presence: true,
                     length: { maximum: 100 }
    # TODO Add validation for images
    validates :description, length: { maximum: 255 }
    
end