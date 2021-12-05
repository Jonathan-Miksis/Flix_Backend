class MediaController < ApplicationController
  def index
    media = Medium.all
    render json: media
  end

  def show 
    media = Medium.find_by(id: params[:id])
    render json: media
  end

end
