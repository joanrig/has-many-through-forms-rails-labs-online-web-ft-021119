class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    @comment.user= User.find_by_id(comment_params[:user_id])
    # @comment.user.username = User.find_by_id(comment_params[:user_id]).username

    redirect_to @comment.post
  end


  def show
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
