class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    find_song
    associated_artist
  end



  private

  def find_song
    @song = Song.find(params[:id])
  end

  def associated_artist
    @artist = Artist.find(@song.artist_id)
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end
