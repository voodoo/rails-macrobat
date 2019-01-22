class Pressure < ApplicationRecord
  belongs_to :user
  validates :sys, :dias, :pulse, numericality: true
  validates :pulse, length: { maximum: 3 }
end
