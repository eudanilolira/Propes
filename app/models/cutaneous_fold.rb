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
        athlete = Athlete.find(self.athlete_id) 
        measures_sum = self.tricipital + self.subescapular + self.average_axilar + self.breastplate + self.supra_ilcia  
        
        if athlete.gender == 'M'
            sum = (measures_sum + self.abdomen ) ** 2 
            self.cutaneous_fold_result = 1.112 - ((0.00043499*(measures_sum + self.thigh )) + 0.00000055*(sum) - ((0.0002882* athlete.age)))
        elsif athlete.gender == 'F'
            sum = (measures_sum + self.abdomen + self.thigh)*(measures_sum + self.abdomen)
            self.cutaneous_fold_result = 1.097 - ((0.00046971*(measures_sum + self.thigh)) + 0.00000056*(sum) - ((0.00012828* athlete.age)))        
        end
        
        fat_percentual = ((4.95/self.cutaneous_fold_result) - 4.50)*100
        
        fat_percentual_classification(athlete, fat_percentual)

        calculate_bone_mass(athlete)
        calculate_residual_mass(athlete)
        calculate_fat_mass(athlete, fat_percentual)
        calculate_lean_mass(athlete)
        calculate_muscle_mass(athlete)
    end

    def calculate_bone_mass(athlete)
        self.bm_result = (((((self.bone_mass_BE + self.bone_mass_BU + self.bone_mass_BF + self.bone_mass_BM)) /4 ) ** 2 ) * athlete.height * 0.00092).round(2)

    end

    def calculate_residual_mass(athlete)
        if athlete.gender == 'M'
            self.residual_mass_result = (athlete.weight * 0.209).round(2)
        elsif athlete.gender == 'F'
           self.residual_mass_result = (athlete.weight * 0.241).round(2)
        end
    end

    def calculate_fat_mass(athlete, fat_percentual)
        self.fat_mass_result = ((athlete.weight * fat_percentual)/100).round(2)
    end

    def calculate_muscle_mass(athlete)
        self.muscle_mass_result = ((athlete.weight - self.fat_mass_result + self.bm_result + self.residual_mass_result)).round(2)
    end

    def calculate_lean_mass(athlete)
        self.lean_mass_result = ((athlete.weight - self.fat_mass_result)).round(2)
    end

    def fat_percentual_classification(athlete, fat_percentual)
        if (athlete.age >= 18 && athlete.age <=25)
            if athlete.gender == 'M'
                puts('idade, genero, fat_percentual:', athlete.age, athlete.gender, fat_percentual)
                if (fat_percentual >= 4 && fat_percentual <=6)
                    self.qualitative_result = 'Excelente' 
                elsif (fat_percentual > 6 && fat_percentual <=10 )
                    self.qualitative_result = "Bom" 
                elsif (fat_percentual > 10 && fat_percentual <=13)
                    self.qualitative_result = "Acima da Média" 
                elsif (fat_percentual > 16 && fat_percentual <=20)
                    self.qualitative_result = "Média" 
                elsif (fat_percentual > 20)
                    self.qualitative_result = "Ruim" 
                end
            
            elsif athlete.gender == 'F'
                if (fat_percentual >= 13 && fat_percentual <=16)
                    self.qualitative_result = 'Excelente' 
                elsif (fat_percentual > 16 && fat_percentual <=19)
                    self.qualitative_result = "Bom" 
                elsif (fat_percentual > 19 && fat_percentual <=22)
                    self.qualitative_result = "Acima da Média" 
                elsif (fat_percentual > 22 && fat_percentual <=25)
                    self.qualitative_result = "Média" 
                elsif (fat_percentual > 28)
                    self.qualitative_result = "Ruim" 
                end
            end
         #fim do primeiro if de idade
        
        elsif (athlete.age >= 26 && athlete.age <=35)
        if athlete.gender == 'M'
            if (fat_percentual >= 8 && fat_percentual <=11)
                self.qualitative_result = 'Excelente' 
            elsif (fat_percentual > 11 && fat_percentual <=15)
                self.qualitative_result = "Bom" 
            elsif (fat_percentual > 15 && fat_percentual <=18)
                self.qualitative_result = "Acima da Média" 
            elsif (fat_percentual > 18 && fat_percentual <=20)
                self.qualitative_result = "Média" 
            elsif (fat_percentual > 20)
                self.qualitative_result = "Ruim" 
            end

        elsif athlete.gender == 'F'
                if (fat_percentual >= 14 && fat_percentual <=16)
                    self.qualitative_result = 'Excelente' 
                elsif (fat_percentual > 16 && fat_percentual <=20)
                    self.qualitative_result = "Bom" 
                elsif (fat_percentual > 20 && fat_percentual <=23)
                    self.qualitative_result = "Acima da Média" 
                elsif (fat_percentual > 23 && fat_percentual <=25)
                    self.qualitative_result = "Média" 
                elsif (fat_percentual > 25 )
                    self.qualitative_result = "Ruim" 
                end
            end
        
        
        elsif (athlete.age >= 36 && athlete.age <=45)
            if athlete.gender == 'M'
                if (fat_percentual <=14)
                    self.qualitative_result = 'Excelente' 
                elsif (fat_percentual > 14 && fat_percentual <=18)
                    self.qualitative_result = "Bom" 
                elsif (fat_percentual > 18 && fat_percentual <=21)
                    self.qualitative_result = "Acima da Média" 
                elsif (fat_percentual > 21 && fat_percentual <=23)
                    self.qualitative_result = "Média" 
                elsif (fat_percentual > 23)
                    self.qualitative_result = "Ruim" 
                end
            
            elsif athlete.gender == 'F'
                if (fat_percentual >= 16 && fat_percentual <=19)
                    self.qualitative_result = 'Excelente' 
                elsif (fat_percentual > 19  && fat_percentual <=23)
                    self.qualitative_result = "Bom" 
                elsif (fat_percentual > 23 && fat_percentual <=26)
                    self.qualitative_result = "Acima da Média" 
                elsif (fat_percentual > 26 && fat_percentual <=29)
                    self.qualitative_result = "Média" 
                elsif (fat_percentual > 29)

                    self.qualitative_result = "Ruim" 
                end
            end
        end #fim do primeiro if de idade



    end #fechamento da funcao fat_percentual_classification

end
