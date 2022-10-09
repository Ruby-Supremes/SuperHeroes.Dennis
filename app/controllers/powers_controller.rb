class PowersController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        power = Power.all
        render json: power
    end 

    def show 
        powers = Power.find(params[:id])
        render json: powers, include: :heros
    end 

    private

    def render_not_found_response
        render json: { error: 'Power Not Found' }, status: :not_found
    end
end
