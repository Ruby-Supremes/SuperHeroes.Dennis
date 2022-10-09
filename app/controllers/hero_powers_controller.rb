class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 

def index
    render json: HeroPower.all 
end

 def create
    hero_power = HeroPower.create!(hero_power_params)
    render json: hero_power.power, status: :created
 end 

 private 

 def hero_power_params
    params.permit(:hero_id, :power_id, :strength)
 end
  
 def render_unprocessable_entity_response(exception)
   # render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
   render json: { error: "validation erors" }, status: :unprocessable_entity
 end
end
