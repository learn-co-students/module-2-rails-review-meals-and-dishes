class Meal < ApplicationRecord
  has_many :meal_dishes
  has_many :dishes, through: :meal_dishes
  validates :name, presence: true
  validates :name, uniqueness: true

end
