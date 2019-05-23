class TegnerLysholm < ApplicationRecord
    validates :instability, presence: true
    validates :pain, presence: true
    validates :swelling, presence: true
    validates :climb_stairs, presence: true
    validates :squat, presence: true
    validates :locking, presence: true
    validates :limp, presence: true
    validates :support, presence: true
end
