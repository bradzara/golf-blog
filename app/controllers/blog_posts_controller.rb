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
    @blog_post = BlogPost.create(
      title: params[:title],
      body: params[:body]
    )
    render :show
  end

  def update
    @blog_post = BlogPost.find_by(id: params[:id])
    @blog_post.update(
      title: params[:title] || @blog_post.title,
      body: params[:body] || @blog_post.body
    )
    render :show
  end

  def delete
    @blog_post = BlogPost.find_by(id: params[:id])
    @blog_post.destroy
    render json: {message: "Post has been deleted"}
  end
end
