class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    render :index
  end

  def show
    @blog_post = BlogPost.find_by(id: params[:id])
    render :show
  end

  def create
    @blog_post = BlogPost.new(
      title: params[:title],
      body: params[:body]
    )
    if @blog_post.save
      render :show
    else
      render json: {error: @blog_post.error.full_messages}
    end
  end

  def update
    @blog_post = BlogPost.find_by(id: params[:id])
    @blog_post.update(
      title: params[:title] || @blog_post.title,
      body: params[:body] || @blog_post.body
    )
    render :show
  end

  def destroy
    @blog_post = BlogPost.find_by(id: params[:id])
    @blog_post.destroy
    render json: {message: "Post has been deleted"}
  end
end
