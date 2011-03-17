class BlogController < ApplicationController
  def index
    @posts = Post.where("published = ?", true)
  end

  def post
    @post = Post.find params[:id]
  end
end
