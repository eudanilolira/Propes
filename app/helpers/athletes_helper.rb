module AthletesHelper

    def evaluation_list
        return evaluation_list = [Anamnese, AnkleMobility, BridgeExtension, Cooper, CutaneousFold, 
        Dynometry, FunctionalTest, Impulsion, Perimetry, Physical, Questionary, TegnerLysholm, YoYo]
    end
    
    def athlete_attributes
        attributes = []
        for attr in @athlete.attributes
            if not ['id','created_at','user_id', 'updated_at', 'avatar'].include? attr[0]
                attributes.append(attr)
            end
        end
        
        return attributes
    end

    def athlete_history(athlete_id) 
        athlete_evaluations = []
        
        for evaluation in evaluation_list
            evaluation.all.each do |e|
                if e.athlete_id == athlete_id
                    athlete_evaluations.append([e,evaluation.table_name])
                    
                end
            end
        end
        
        athlete_evaluations
    end

    def athlete_evaluations
        return evaluation_list = ['anamneses/new', 'ankle_mobility/new', 'bridge_extension/new', 'cooper/new', 'cutaneous_fold/new', 
        'dynometry/new', 'functional_test/new', 'impulsion/new', 'perimetry/new', 'physical/new', 'questionary/new', 'tegner_lysholm/new', 'yo_yo/new']    
    end

    
end
