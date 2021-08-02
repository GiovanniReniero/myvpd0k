class Recipe < ApplicationRecord
  has_many :reviews
  has_many :quantities
  validates :name, uniqueness: true
  validates :instructions, presence: true, length: { minimum: 10 }
end



