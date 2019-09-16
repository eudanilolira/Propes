class Perimetry < ApplicationRecord
    validates :left_arm_relaxed, presence: true
    validates :right_arm_relaxed, presence: true
    validates :left_contracted_arm, presence: true
    validates :right_contracted_arm, presence: true
    validates :chest, presence: true
    validates :abdomen, presence: true
    validates :left_proximal_thigh, presence: true
    validates :right_proximal_thigh, presence: true
    validates :left_middle_thigh, presence: true
    validates :right_middle_thigh, presence: true
    validates :left_distal_thigh, presence: true
    validates :right_distal_thigh, presence: true
    validates :left_leg, presence: true
    validates :right_leg, presence: true
    validates :waist, presence: true
    validates :hip, presence: true
    validates :qualitativeResult, presence: false

    before_save :calculate_perimetry
    def calculate_perimetry
        
        athlete = Athlete.find(self.athlete_id) 
        waist_hip_relation_result = (self.waist/self.hip)
        
            if athlete.gender == "M"
                
                if athlete.age >= 20 && athlete.age <29
                    if waist_hip_relation_result < 0.83
                        self.qualitativeResult = "Baixo - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>=0.83 && waist_hip_relation_result<=0.88
                        self.qualitativeResult = "Moderado - #{waist_hip_relation_result}"   
                    elsif waist_hip_relation_result>0.88 && waist_hip_relation_result<=0.94
                        self.qualitativeResult = "Alto" 
                    elsif waist_hip_relation_result>0.94
                        self.qualitativeResult = "Muito Alto - #{waist_hip_relation_result}"     
                    end
                
                
                elsif athlete.age >=30 && athlete.age <=39
                    if waist_hip_relation_result>=0.84 && waist_hip_relation_result<=0.91
                        self.qualitativeResult = "Moderado - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>0.91 && waist_hip_relation_result<=0.96
                        self.qualitativeResult = "Alto - #{waist_hip_relation_result}"  
                    elsif waist_hip_relation_result> 0.96
                        self.qualitativeResult = "Muito Alto - #{waist_hip_relation_result}"

                    end
                
                
                elsif athlete.age >=40 && athlete.age <=49
                    if waist_hip_relation_result<0.88
                        self.qualitativeResult = "Baixo - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>=0.88 && waist_hip_relation_result<=0.95
                        self.qualitativeResult = "Moderado - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>0.95 && waist_hip_relation_result<=1
                        self.qualitativeResult ="Alto"
                    elsif waist_hip_relation_result>1
                        self.qualitativeResult = "Muito Alto - #{waist_hip_relation_result}"
                    
                    end
                else
                    self.qualitativeResult = "O teste não se aplica a faixa etária do atleta."
                end
               
                

            elsif athlete.gender == "F"
                if athlete.age >= 20 && athlete.age <29
                    if waist_hip_relation_result waist_hip_relation_result<0.71
                        self.qualitativeResult = "Baixo - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>=0.71 && waist_hip_relation_result<=0.77
                        self.qualitativeResult = "Moderado - #{waist_hip_relation_result}"   
                    elsif waist_hip_relation_result>0.77 && waist_hip_relation_result<=0.82
                        self.qualitativeResult = "Alto" 
                    elsif waist_hip_relation_result>0.82
                        self.qualitativeResult = "Muito Alto - #{waist_hip_relation_result}"     
                    end
                end
                
                elsif athlete.age >=30 && athlete.age <=39
                    if waist_hip_relation_result<0.72
                        self.qualitativeResult = "Baixo - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>=0.72 && waist_hip_relation_result<=0.78
                        self.qualitativeResult = "Moderado - #{waist_hip_relation_result}"  
                    elsif waist_hip_relation_result>0.78 && waist_hip_relation_result<=0.84
                        self.qualitativeResult = "Alto - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result> 0.84
                        self.qualitativeResult = "Muito Alto - #{waist_hip_relation_result}"

                    end
                
                
                elsif athlete.age >=40 && athlete.age <=49
                    if waist_hip_relation_result<0.73
                        self.qualitativeResult = "Baixo - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>=0.73 && waist_hip_relation_result<=0.79
                        self.qualitativeResult = "Moderado - #{waist_hip_relation_result}"
                    elsif waist_hip_relation_result>0.79 && waist_hip_relation_result<=0.87
                        self.qualitativeResult ="Alto"
                    elsif waist_hip_relation_result>0.87
                        self.qualitativeResult = "Muito Alto - #{waist_hip_relation_result}"
                    end
                else
                    self.qualitativeResult = "O teste não se aplica a athlete.age do atleta."
                end
            end
        end
            


            

        

    

