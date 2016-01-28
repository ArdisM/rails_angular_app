class Api::PilotsController < ApplicationController


  def index
      pilots = Pilot.all
      render json: {pilots: pilots}
    end

    def create
      new_pilot = Pilot.create( pilot_params )
      render json: new_pilot
    end

    private

    def pilot_params
      params.require(:pilot).permit(:first_name, :last_name, :missions, :aeronautical_rating, :country, :url)
    end

  end
