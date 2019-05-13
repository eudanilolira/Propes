class Anamnese < ApplicationRecord
  validates :main_complaint, presence: true
  validates :history_complaint, presence: false
  validates :nature_complaint, presence: false
  validates :history_injuries, presence: false
  validates :is_accompanying, presence: false

end
