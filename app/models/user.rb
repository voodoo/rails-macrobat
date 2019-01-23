class User < ApplicationRecord
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name,  presence: true, length: { maximum: 50, minimum: 3 }, uniqueness: true
    validates :email, presence: true, length: { maximum: 255, minimum: 6 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

    validates :password, length: { minimum: 6 }
    
    has_many :meals, dependent: :destroy
    has_many :glucoses, dependent: :destroy
    has_many :pressures, dependent: :destroy
    has_many :ketos, dependent: :destroy

    before_save   :downcase_email
    
    has_secure_password


    private

    # Converts email to all lower-case.
    def downcase_email
        self.email = email.downcase
    end
end
