class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find_by_id(params[:id])
  end

  def new
    @playlist = Playlist.new
    3.times {@playlist.songs.build }

  end

  def create

    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to playlist_path(@playlist)
    else
      render :new
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids:[], songs_attributes:[:name, :genre, :artist_id])

  end
end