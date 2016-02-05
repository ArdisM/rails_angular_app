class Api::PilotsController < ApplicationController


  def index
      pilots = Pilot.all
      render json: {pilots: pilots}
    end

    def create
      new_pilot = Pilot.create( pilot_params )
      render json: new_pilot
    end

    def destroy
      @pilot = Pilot.find(params[:id])
      @pilot.destroy
      render json: {status: 200}
    end



    private

    def pilot_params
      params.require(:pilot).permit(:first_name, :last_name, :missions, :rank, :country, :url)
    end

  end
