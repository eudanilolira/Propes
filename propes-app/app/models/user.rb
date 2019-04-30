class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: {maximum: 60}
    validates :password, presence: true, length: {minimum: 10}, confirmation: true
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    #VALID_CPF_FORMAT= /\d{3}\.\d{3}\.\d{3}\-\d{2}/
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    #validates :cpf, format: { with: VALID_CPF_FORMAT}
    before_save { self.email = email.downcase }
end

#Need to correct de REGEX of CPF 