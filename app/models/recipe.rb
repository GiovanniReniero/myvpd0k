class Recipe < ApplicationRecord
  has_many :reviews
  has_many :quantities
end



