module BlogHelper
  def blog_post_url(p)
    "/#{p.to_param}"
  end
end
