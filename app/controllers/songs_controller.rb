class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    find_song
    associated_artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to associated_artist
    else
      render 'new'
    end
  end

  def destroy
    find_song
    @song.destroy
    redirect_to associated_artist
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
