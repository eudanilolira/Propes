module AthletesHelper

    def evaluation_list
        return evaluation_list = [Anamnese, AnkleMobility, BridgeExtension, Cooper, CutaneousFold, 
        Dynometry, Impulsion, Perimetry, Questionary, TegnerLysholm, YoYo, YTest]
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
        return evaluation_list = ['anamneses/new', 'ankle_mobilities/new', 'bridge_extensions/new', 'coopers/new', 'cutaneous_folds/new', 
        'dynometries/new', 'impulsions/new', 'perimetries/new', 'questionaries/new', 'tegner_lysholms/new', 'y_tests/new', 'yo_yos/new']    
    end

    
end
