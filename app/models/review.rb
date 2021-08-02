class Review < ApplicationRecord
  belongs_to :recipe
  validates :rating,  presence: true
end
