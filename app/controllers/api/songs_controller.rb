class Api::SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs
    end

    def show
        song = Song.find(params[:id])
        render json: song, include: :instruments
    end

    def create
        Song.create(song_params)
    end

    def update
        song = Song.find(params[:id])
        song.instruments = []
        song.update(song_params)
    end

    def destroy
        Song.find(params[:id]).destroy
    end

    private

    def song_params
        new_params = params.require(:song).permit(
            :name,
            :bpm,
            instruments_attributes: [
                :name,
                :instrument,
                :notes,
                :octave
            ]
        )
    end
end
