class Athlete < ApplicationRecord
    has_one_attached :avatar
    
    has_many :anamneses
    has_many :questionaries
    has_many :perimetries
    has_many :cutaneous_folds
    has_many :tegner_lysholms
    has_many :coopers
    has_many :yo_yos
    has_many :impulsions
    has_many :ankle_mobilities
    has_many :bridge_extensions
    has_many :dynometries
    
    validates :weight, presence: true
    validates :height, presence: true
    validates :name, presence: true
    validates :cpf, presence: true
    validates :date_birth, presence: true
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
end
