class ArtistsController < ApplicationController
  
 before_action :set_top
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  
  def index
    @artists = @top.artists
  end

  def show
  end

  def new
    @artist = @top.Artists.new
  end
  def create
    @artist = @top.Artists.new(artist_params)
    if @artist.save
      redirect_to [@top, @artist]
      
    else 
      render :new
    end

  end

  def update
if @artist.update(artist_params)
  redirect_to [@top, @artist]
else
render :edit 
  end
  def destroy
    @artist.destroy
    redirect_to tops_path
  end

  def edit
  end

  private

def artist_params 
  params.require(:artist).permit(:ranking)
end
def set_top
  @top = Top.find(params[:top_id])



end


  def set_artist
    @artist = Artists.find([:id]) 

  end
end
end
