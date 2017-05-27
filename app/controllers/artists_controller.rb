class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end
  end

  def destroy
    find_artist
    @artist.destroy
    redirect_to artists_path
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    artist_params = params.require(:artist).permit(:name, :img_url)
  end
end
