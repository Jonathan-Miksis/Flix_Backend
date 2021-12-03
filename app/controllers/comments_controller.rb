class CommentsController < ApplicationController

  def create
    comment = Comment.new(
      body: params[:body],
    )
    comment.save
    render json: comment
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: {message: "Comment deleted"}
  end


end
