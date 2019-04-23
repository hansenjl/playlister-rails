class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by_id(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end
end
