class ListEvaluationsController < ApplicationController
    require 'json'
    protect_from_forgery with: :null_session
    @@evaluation_list = []

    def set_list
        receiving = JSON.parse params[:list]

        @@evaluation_list = receiving.split(',')
        puts @@evaluation_list[0][0]
        next_evaluation()
    end

    def next_evaluation
        next_ev = @@evaluation_list[0][0]
        @@evaluation_list[0].delete_at(0)
        redirect_to "/#{next_ev}"
    end
end
