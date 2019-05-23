class Cooper < ApplicationRecord
    validates :distance, presence: true
    validates :aerobic_capacity, presence: true
    validates :v2max, presence: true
end
