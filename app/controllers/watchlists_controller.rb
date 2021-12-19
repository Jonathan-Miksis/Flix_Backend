class WatchlistsController < ApplicationController

  def index
    # watchlist = current_user.watchlist.where(status: "watch")
    watchlist = Watchlist.all
    render json: watchlist
  end
  
  def create
    watchlist_item = Watchlist.new(
      user_id: current_user.id,
      medium_id: params[:medium_id],      
      status: "watch"
    )
    watchlist_item.save
    render json: watchlist_item
  end

  def destroy
    watchlist = Watchlist.find_by(id: params[:id])
    watchlist.update(status: "removed")
    render json: {message: "media removed"}
  end
end
