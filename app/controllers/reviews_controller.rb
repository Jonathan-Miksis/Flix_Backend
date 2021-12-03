class ReviewsController < ApplicationController
  def index 
    review = Review.all
    render json: review
  end

  def create 
    review = Review.new(
      title: params[:title],
      flix_rating: params[:flix_rating],
      post: params[:post]
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
