class Perimetry < ApplicationRecord
    validates :left_arm_relaxed, presence: true
    validates :right_arm_relaxed, presence: true
    validates :left_contracted_arm, presence: true
    validates :right_contracted_arm, presence: true
    validates :chest, presence: true
    validates :abdomen, presence: true
    validates :left_proximal_thigh, presence: true
    validates :right_proximal_thigh, presence: true
    validates :left_middle_thigh, presence: true
    validates :right_middle_thigh, presence: true
    validates :left_distal_thigh, presence: true
    validates :right_distal_thigh, presence: true
    validates :left_leg, presence: true
    validates :right_leg, presence: true
    validates :waist, presence: true
    validates :hip, presence: true
end
