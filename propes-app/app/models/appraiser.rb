class Appraiser < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: {maximum: 60}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    VALID_CPF_FORMAT= /^([0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2})$/
    validates :password, presence: true, length: {minimum: 10}, confirmation: true
    validates :cpf, presence: true, length: {maximum: 11, minimum: 11}, format: { with: VALID_CPF_FORMAT}, uniqueness: {case_sensitive: false }
    validates :data_nasc, presence: true
    validates :sexo, presence: true
    validates :profissao, presence: true
    validates :endereco, presence: true
    validates :cidade, presence: true
    validates :bairro, presence: true
    validates :estado, presence: true
    validates :cep, presence: true
    validates :telefone_casa, presence: false
    validates :telefone_celular, presence: false
    before_save { self.email = email.downcase }
end
