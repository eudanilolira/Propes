class CutaneousFold < ApplicationRecord

    #Fields to use in cutaneous fold
    validates :tricipital, presence: true
    validates :subescapular, presence: true
    validates :average_axilar, presence: true
    validates :breastplate, presence: true
    validates :supra_ilcia, presence: true
    validates :abdomen, presence: true
    validates :thigh, presence: true

    #Fields to use in bone mass
    validates :bone_mass_BE, presence: true
    validates :bone_mass_BU, presence: true
    validates :bone_mass_BF, presence: true
    validates :bone_mass_BM, presence: true
    

    before_save :calculate_cutaneous_fold 

    def calculate_cutaneous_fold 
        measures_sum = self.tricipital + self.subescapular + self.average_axilar + self.breastplate + self.supra_ilcia 
        athlete = Athlete.find(self.athlete_id)
        
        if athlete.gender == 'M'
            sum = (measures_sum + self.abdomen ) ** 2
            self.result = 1.112 - ((0.00043499*(measures_sum + self.thigh )) + 0.00000055*(sum) - ((0.0002882* athlete.age)))
        elsif athlete.gender == 'F'
            sum = (measures_sum + self.abdomen + self.thigh)*(measures_sum + self.abdomen)
            self.result = 1.097 - ((0.00046971*(measures_sum + self.thigh)) + 0.00000056*(sum) - ((0.00012828* athlete.age)))        
        end
        
        fat_percentual = ((4.95/self.result) - 4.50)*100
    end

    def calculate_bone_mass
    end

    def calculate_residual_mass
    end

    def calculate_muscle_mass
    end

    def calculate_lean_mass
    end

end
