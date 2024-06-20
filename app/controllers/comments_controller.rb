class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render :show
  end

  def create
    @comment = Comment.new(
      body: params[:body],
      blog_post_id: params[:blog_post_id]
    )
    if @comment.save
      render :show 
    else
      render json: { ERRORS: @comment.errors.full_messages }
    end
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.update(
      body: params[:body] || @comment.body,
      blog_post_id: params[:blog_post_id] || @comment.blog_post_id
    )
    render :show
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    render json: {message: "Comment has been deleted"}
  end
end
