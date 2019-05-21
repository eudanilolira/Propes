class Questionary < ApplicationRecord
    validates :question1a, presence: true
    validates :question1b, presence: true
    validates :question2a, presence: true
    validates :question2b, presence: true
    validates :question3a, presence: true
    validates :question3b, presence: true
    validates :question4a, presence: true
    validates :question4b, presence: true
end
