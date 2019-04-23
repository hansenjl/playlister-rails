class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find_by_id(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new
    if @playlist.save
      redirect_to playlist_path(@playlist)
    else
      render :new
    end
  end
end