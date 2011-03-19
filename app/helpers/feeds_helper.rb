module FeedsHelper
  def post_url(p)
    "http://#{blog_host}/#{p.to_param}"
  end
end
