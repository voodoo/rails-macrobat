class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :pic
  validates :calories, :fats, :carbs, numericality: true
end
