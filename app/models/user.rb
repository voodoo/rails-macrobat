class User < ApplicationRecord
    has_many :meals, dependent: :destroy
    has_many :glucoses, dependent: :destroy
    has_many :pressures, dependent: :destroy
end
