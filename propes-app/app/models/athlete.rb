class Athlete < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: {maximum: 60}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    validates :password, presence: true, length: {minimum: 10}, confirmation: true
    VALID_CPF_FORMAT= /^([0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2})$/
    validates :cpf, presence: true, length: {maximum: 11, minimum: 11}, format: { with: VALID_CPF_FORMAT}, uniqueness: {case_sensitive: false }
    validates :data_nasc, presence: true
    validates :idade, presence: true
    validates :sexo, presence: true
    validates :estado_civil, presence: true
    validates :grau_instrucao, presence: true
    validates :profissao, presence: true
    validates :endereco, presence: true
    validates :cidade, presence: true
    validates :bairro, presence: true
    validates :estado, presence: true
    validates :cep, presence: true
    validates :telefone_casa, presence: false
    validates :telefone_celular, presence: false
    validates :modalidade, presence: true
    validates :posicao, presence: true
    validates :msd, presence: true
    validates :mif, presence: true
    validates :fumante, presence: true
    validates :etilismo, presence: true
    validates :has, presence: true
    validates :diabetes, presence: true
    validates :doencas_cardio, presence: true
    validates :pratica_exerc, presence: true
    validates :fami_etilismo, presence: true
    validates :fami_has, presence: true
    validates :fami_diabetes, presence: true
    validates :fami_cardio, presence: true
    validates :outros, presence: true
    before_save { self.email = email.downcase }
end
