class BlogController < ApplicationController
  before_filter :set_history
  def index
    @posts = Post.published.order("created_at DESC").limit(5)
  end

  def post
    @post = Post.find params[:id]
  end

  private
  def set_history
    @post_history = Post.published.order("id ASC").group_by { |p| p.created_at.strftime "%B %Y" }
  end
end
