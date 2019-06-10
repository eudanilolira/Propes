class ListEvaluationsController < ApplicationController
    @@evaluation_list = []

    def set_list
        @@evaluation_list = params[:list].split(",")
    end

    def next_evaluation()
        next_ev = @@evaluation_list[0]
        @@evaluation_list.delete_at(0)
        return "http://localhost:3000/" + next_ev.to_s
    end
end
