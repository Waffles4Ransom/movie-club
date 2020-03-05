class CommentsController < ApplicationController
  before_action :authenticate
  before_action :set_review
  before_action :set_movie
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new 
    @comment = @review.comments.build
  end 

  def create 
    @comment = @review.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to movie_url(@movie)
    else 
      render :new 
    end 
  end 

  def edit 
  end 

  def update
    @comment.update(comment_params)
    if @comment.save
      redirect_to movie_url(@movie)
    else 
      render :edit
    end 
  end 

  def destroy
    @comment.destroy
    redirect_to movie_url(@movie)
  end 

  private 

  def set_review
    @review = Review.find(params[:review_id])
  end 

  def set_comment
    @comment = Comment.find(params[:id])
  end 

  def set_movie 
    @movie = @review.movie
  end 

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end 

end
