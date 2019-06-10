class YTest < ApplicationRecord
    validates :right_PA, presence: true
    validates :right_PM, presence: true
    validates :right_PL, presence: true
    validates :right_CM, presence: true
    validates :left_PA, presence: true
    validates :left_PM, presence: true
    validates :left_PL, presence: true
    validates :left_CM, presence: true
end
