class Ingredient < ApplicationRecord
  has_many :quantities
  has_many :recipies, through: :quantities
  validates :name, presence: true, uniqueness: true
end
