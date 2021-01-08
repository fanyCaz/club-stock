class User < ApplicationRecord
    before_save { self.username = username.downcase }
    validates :name,presence: true, length: { minimum: 2, maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :username , presence: true, length: { minimum: 5 ,maximum: 100 },
                format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
