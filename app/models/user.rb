class User < ApplicationRecord
    attr_accessor :approved
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

    has_secure_password
    has_one_attached :avatar
    validates :name, presence: true, length: {maximum: 60}
    validates :password, :presence => true, :length => {minimum: 10}, :confirmation => true
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}
    validates :cpf, presence: true
    validates :date_birth, presence: true
    validates :gender, presence: true
    validates :profession, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :neighborhood, presence: true
    validates :state, presence: true
    validates :cep, presence: true
    validates :home_phone, presence: false
    validates :cell_phone, presence: true
    validates :approved, presence: false
    
    before_save { self.email = email.downcase }
end
