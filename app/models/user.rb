class User < ApplicationRecord
    
    has_secure_password
    has_one_attached :avatar
    validates :name, presence: true, length: {maximum: 60}
    validates :password, :presence => true, :length => {minimum: 10}, :confirmation => true
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    validates :cpf, presence: false, length: {maximum: 11, minimum: 11}, uniqueness: {case_sensitive: false }
    validates :date_birth, presence: false
    validates :gender, presence: false
    validates :profession, presence: false
    validates :address, presence: false
    validates :city, presence: false
    validates :neighborhood, presence: false
    validates :state, presence: false
    validates :cep, presence: false
    validates :home_phone, presence: false
    validates :cell_phone, presence: false
    
    
    before_save { self.email = email.downcase }
end
