class PowersController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        power = Power.all
        render json: power
    end 

    def show 
        powers = Power.find(params[:id])
        render json: powers
    end 

    def update
        power = Power.find_by(id: params[:id])
           if power
            power.update(power_params)
            render json: power,status: :created
           else
           render json: { error: "Power not found"}, status: :not_found
           end
        
    end

    private

    def render_not_found_response
        render json: { error: 'Power Not Found' }, status: :not_found
    end

    def power_params
        params.permit(:name, :description)
    end
end
