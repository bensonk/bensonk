class BlogController < ApplicationController
  before_filter :set_history
  def index
    @posts = Post.published.order("created_at DESC").limit(5)
  end

  def post
    if current_user and current_user.admin?
      @post = Post.find params[:id]
    else
      @post = Post.published.find params[:id]
    end
    if not @post
      flash[:error] = "We couldn't find that post."
      redirect_to :action => :index
    end
  end

  private
  def set_history
    @post_history = Post.published.order("id ASC").group_by { |p| p.created_at.strftime "%B %Y" }
  end
end
