class Recipe < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :quantities,  dependent: :destroy
  validates :name, uniqueness: true
  validates :instructions, presence: true, length: { minimum: 10 }
end



