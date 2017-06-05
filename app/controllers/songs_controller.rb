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

    respond_to do |format|
      if @song.save
        format.html { redirect_to associated_artist}
        format.js   { render :show, status: :created, location: @song }
      else
        format.html { redirect_to associated_artist }
        format.js   { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    find_song
    @artist = @song.artist
    @song.destroy!
    @songs = Song.where(artist_id: @artist.id)

    respond_to do |format|
      format.html { redirect_to associated_artist }
      format.js   { redirect_to associated_artist }
    end
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
