class RacesController < ApplicationController

  def index
    # cancancan can load these resources dynamically so you just have to call if @meet rather than instantiate meet
    @races = if params[:meet_id].present?
      meet = Meet.find(params[:meet_id])
      meet.races 
    else
      Race.all
    end  
  end 
  
  def show
    @race = Race.find(params[:id])
  end 
end
