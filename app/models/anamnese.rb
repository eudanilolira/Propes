class Anamnese < ApplicationRecord

  validates :main_complaint, presence: true
  validates :history_complaint, presence: true
  validates :nature_complaint, presence: true
  validates :history_injuries, presence: true
  validates :is_accompanying, presence: true

end
