class BridgeExtension < ApplicationRecord
    validates :right_side, presence: true
    validates :left_side, presence: true
end
