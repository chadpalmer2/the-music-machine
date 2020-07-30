class Api::InstrumentsController < ApplicationController

    def index
        instruments = Instrument.all 
        render json: instruments
    end

    def show
        instrument = Instrument.find(params[:id])
        render json: instrument
    end

end
