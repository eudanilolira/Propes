class Appraiser < ApplicationRecord
    VALID_CPF_FORMAT= /^([0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2})$/
    validates :name, presence: true, length: {maximum: 60}
    validates :cpf, presence: true, length: {maximum: 11, minimum: 11}, format: { with: VALID_CPF_FORMAT}, uniqueness: {case_sensitive: false }
    validates :date_birth, presence: true
    validates :gender, presence: true
    validates :profession, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :neighborhood, presence: true
    validates :state, presence: true
    validates :cep, presence: true
    validates :home_phone, presence: false
    validates :cell_phone, presence: false
end
