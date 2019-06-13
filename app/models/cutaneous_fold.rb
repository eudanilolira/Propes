class CutaneousFold < ApplicationRecord
    validates :tricipital, presence: true
    validates :subescapular, presence: true
    validates :average_axilar, presence: true
    validates :breastplate, presence: true
    validates :supra_ilcia, presence: true
    validates :abdomen, presence: true
    validates :thigh, presence: true
    validates :bone_mass_BE, presence: true
    validates :bone_mass_BU, presence: true
    validates :bone_mass_BF, presence: true
    validates :bone_mass_BM, presence: true
    validates :residual_mass, presence: true
    validates :fat_mass, presence: true
    validates :muscle_mass, presence: true
    validates :lean_mass, presence: true
end
