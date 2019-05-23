class YoYo < ApplicationRecord
    validates :distance, presence: true
    validates :v2max, presence: true
end
