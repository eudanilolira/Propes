class ListEvaluationsController < ApplicationController
    @@evaluation_list = []

    def set_list
        @@evaluation_list = params[:list].split(",")
        puts @@evaluation_list
        next_evaluation()
    end

    def next_evaluation
        next_ev = @@evaluation_list[0]
        @@evaluation_list.delete_at(0)
        redirect_to "/#{next_ev}"
    end
end
