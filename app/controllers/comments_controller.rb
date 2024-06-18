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
    @comment = Comment.create(
      title: params[:title],
      body: params[:body]
    )
    render :show
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.update(
      title: params[:title] || @comment.title,
      body: params[:body] || @comment.body
    )
    render :show
  end

  def delete
    @comment = Comment.find_by(id: params[:id])
    @comment.delete
    render json: {message: "Comment has been deleted"}
  end
end
