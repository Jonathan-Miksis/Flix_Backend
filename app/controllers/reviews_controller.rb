class ReviewsController < ApplicationController
  def index 
    review = Review.all
    render json: review
  end

  def create 
    review = Review.new(
      user_id: current_user.id,
      title: params[:title],
      flix_rating: params[:flix_rating],
      post: params[:post],
      medium_id: params[:medium_id]
    )
    review.save
    render json: review
  end

  def destroy
    review = Review.find_by(id: params[:id])
    review.destroy
    render json: {message: "Review deleted"}
  end
  
end
