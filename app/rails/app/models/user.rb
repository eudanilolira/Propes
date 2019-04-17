class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: {maximum: 60}
    validates :password, presence: true, length: {minimum: 10}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    before_save { self.email = email.downcase }
end
