class Glucose < ApplicationRecord
    belongs_to :user
    validates :reading,  presence: true
end
