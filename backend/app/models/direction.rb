class Direction
    include Mongoid::Document
    include Mongoid::Timestamps::Created
    include Mongoid::Timestamps::Updated

    field :direction, type: String
    field :seq, type: Integer

    belongs_to :recipe

    validates :direction,   presence: true,
                            length: { maximum: 255 }
    validates :seq,    presence: true,
                            numericality: {
                                greater_than: 0
                            },
                            uniqueness: {
                                scope: :recipe_id
                            }
end