class Recipe
    include Mongoid::Document
    include Mongoid::Timestamps::Created
    include Mongoid::Timestamps::Updated
    # Recipes attributes
    # - name
    # - description
    # - image
    # - is_visible

    # relationships
    # //- ingredients -> has_many
    # //  directions -> has_many
    # - images -> has_many
    # - reviews -> has_many
    # - tags -> has_many

    field :name, type: String
    field :image, type: String
    field :description, type: String
    field :is_visible, type: Boolean

    # has_many :ingredients

    validates :name, presence: true,
                     length: { maximum: 100 }
    validates :description, length: { maximum: 255 }
    
end