class SongsController < ApplicationController
  def index
    @songs = Song.all
    render json: @songs
  end

  def create
    @song = Song.new(song_params)
    @song.save
  end

  def show
    @song = Song.find(params[:id])
    render json: @song
  end

  private
  def song_params
    params.permit(:title, :meta, :lyrics)
  end
end
