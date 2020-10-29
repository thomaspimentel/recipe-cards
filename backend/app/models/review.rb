# frozen_string_literal: true

# Review model
class Review
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :header, type: String
  field :body, type: String
  field :rating, type: Integer
  field :ip_address, type: String

  belongs_to :recipe

  validates :header,  presence: { if: :body? },
                      length: { maximum: 100 }
  validates :body,    presence: { if: :header? },
                      length: { maximum: 255 }
  validates :rating,  presence: true,
                      numericality: {
                        greater_than_or_equal_to: 0,
                        less_than_or_equal_to: 5
                      }
  validates :ip_address,  presence: true,
                          format: {
                            with: /\A([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}\z/,
                            message: 'is not a valid ip address'
                          }
end
