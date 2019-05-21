class Impulsion < ApplicationRecord
    validates :distance, presence: true
    validates :P, presence: true
end
