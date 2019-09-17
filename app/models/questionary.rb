class Questionary < ApplicationRecord
    validates :question1a, presence: true
    validates :question1b, presence: true
    validates :question2a, presence: true
    validates :question2b, presence: true
    validates :question3a, presence: true
    validates :question3b, presence: true
    validates :question4a, presence: true
    validates :question4b, presence: true

    before_save :calculate_questionary

    def calculate_questionary
        frequency_sum = self.question1a + self.question2a + self.question3a
        minutes_sum = self.question3b*self.question3a + self.question2b*self.question2a + self.question1b*self.question1a
        
        if frequency_sum == 0 && minutes_sum == 0 
            self.qualitative_result = 'Sedentário'
        elsif self.question3a >= 5 && self.question3b >= 30 || self.question3a >= 3 && self.question3b >= 20 && self.question2a >= 5 && self.question2b >= 30 || self.question1a >= 5 && self.question2a >= 30 || self.question3a >= 3 && frequency_sum >= 8 && minutes_sum >= 240    
            self.qualitative_result = 'Muito Ativo'
        elsif self.question3a >= 3 && self.question3b >= 20 || self.question2a >= 5 && self.question2b >= 30 || self.question1a >= 5 && self.question2a >= 30 || frequency_sum >= 5 && minutes_sum >= 150   
              self.qualitative_result = 'Ativo'
        elsif frequency_sum >= 5 || minutes_sum >= 150   
            self.qualitative_result'Irregularmente Ativo A'

            
        elsif frequency_sum < 5 && frequency_sum >=1 && minutes_sum < 150 && minutes_sum >=1   
        self.qualitative_result = 'Irregularmente Ativo B'
        end  
    end
end
