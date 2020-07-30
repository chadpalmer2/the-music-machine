class Api::SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs
    end

    def show
        song = Song.find(params[:id])
        render json: song, include: :instruments
    end

end
