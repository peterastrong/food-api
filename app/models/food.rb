class Food < ApplicationRecord
  validates :ingredient1, presence: true 
  validates :ingredient2, presence: true 
end
