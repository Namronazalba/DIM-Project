class DisastersController < ApplicationController
  before_action :authenticate_user!
  def index
    @disaster = Disaster.all
  end

  def new
    @disaster = Disaster.new
  end

  def create
    @param = params.require(:disaster).permit(:disaster_type)
    @disaster = Disaster.new(@param)
    if @disaster.save
      redirect_to disasters_path
    else
      render :new
    end
  end

  def edit
    @disaster = Disaster.find(params[:id])
  end

  def update
    @param = params.require(:disaster).permit(:disaster_type)
    @disaster = Disaster.find(params[:id])
    if @disaster.update(@param)
      redirect_to disasters_path
    else
      render :edit
    end
  end

  def show
    @disaster = Disaster.find(params[:id])
  end


  def destroy

  end

end
