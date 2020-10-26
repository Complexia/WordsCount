class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    has_secure_password
    before_save { self.email = email.downcase }
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :phoneNumber, presence: true
    validates :password, presence: true, length: { minimum: 8 }
    
    # Returns the hash digest of the given string.
    def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
