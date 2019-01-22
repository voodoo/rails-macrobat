class Keto < ApplicationRecord
  belongs_to :user
  validates :reading, numericality: true
end
