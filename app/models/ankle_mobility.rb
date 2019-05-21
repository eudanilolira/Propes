class AnkleMobility < ApplicationRecord
    validates :right_ankle, presence: true
    validates :left_ankle, presence: true
end
