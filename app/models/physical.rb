class Physical < ApplicationRecord
    validates :blood_pressure, presence: true
    validates :respiratory_frequency, presence: true
    validates :heart_rate, presence: true
    validates :SpO2, presence: true
    validates :weight, presence: true
    validates :height, presence: true
    validates :imc, presence: true
end
