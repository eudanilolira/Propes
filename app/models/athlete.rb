class Athlete < ApplicationRecord
    has_one_attached :avatar
    has_many :anamneses
    
    validates :name, presence: true, length: {maximum: 60}
    validates :cpf, presence: true, length: {maximum: 11, minimum: 11}, uniqueness: {case_sensitive: false }
    validates :date_birth, presence: true
    validates :age, presence: true
    validates :gender, presence: true
    validates :civil_status, presence: true
    validates :degree_education, presence: true
    validates :profession, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :neighborhood, presence: true
    validates :state, presence: true
    validates :cep, presence: true
    validates :home_phone, presence: false
    validates :cell_phone, presence: false
    validates :modality, presence: true
    validates :position, presence: true
    validates :dum , presence: true
    validates :dlm, presence: true
    validates :smoker , presence: true
    validates :alcoholism, presence: true
    validates :sah, presence: true
    validates :diabetes, presence: true
    validates :cardio_deseases, presence: true
    validates :exercise_practice, presence: true
    validates :fami_alcoholism, presence: true
    validates :fami_sah, presence: true
    validates :fami_diabetes, presence: true
    validates :fami_cardio, presence: true
    validates :others, presence: true
end
