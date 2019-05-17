module AthletesHelper
    
    def evaluation_list
        return evaluation_list = [Anamnese, AnkleMobility, BridgeExtension, Cooper, CutaneousFold, 
        Dynometry, FunctionalTest, Impulsion, Perimetry, Physical, Questionary, TegnerLysholm, YoYo]
    end
    
    def athlete_attributes
        attributes = []
        for attr in @athlete.attributes
            if not ['id','created_at','user_id', 'updated_at'].include? attr[0]
                attributes.append(attr)
            end
        end
        
        return attributes
    end

    def athlete_history(athlete_id) 
        athlete_evaluations = []
        
        for evaluation in evaluation_list
            evaluation.all.each do |e|
                if e.athletes_id = athlete_id
                    athlete_evaluations.append(e)
                end
            end
        end
        
        athlete_evaluations
    end

    def athlete_evaluations
        return evaluation_list = ['anamneses/new', 'ankle_mobility/new', 'bridge_extension/new', 'cooper/new', 'cutaneous_fold/new', 
        'dynometry/new', 'functional_test/new', 'impulsion/new', 'perimetry/new', 'physical/new', 'questionary/new', 'tegner_lysholm/new', 'yo_yo/new']    
    end

    def choose_athlete
        session[:athlete_id] = @athlete.id
    end
    
    def current_athlete
        @current_athlete ||= Athlete.find_by(id: session[:athlete_id])
    end
    
end
