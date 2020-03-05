class TopsController < ApplicationController


before_action :set_top, only: [:show, :edit, :update, ]

  def index
   @tops = Top.all
  end

  def show
  end

  def new
  @top = Top.new

  end
  def create 
    @top = Top.new(top_params)
    if @top.save
      redirect_to tops_path
    else 
      render :new 
  end

  def edit 
    render :edit 
  end
  
  def update
    if @top.update(top_params)
      redirect_to tops_path
    else 
      render :edit 
    end

    def destroy
      @top = Top.find(params[:id])
      @top.destroy
      redirect_to tops_path
    end
end
end 


private
def top_params
  params.require(:top).permit(:artist)
  end

def set_top
  @top = Top.find(params[:id])
  
    end
end