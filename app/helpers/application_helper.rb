module ApplicationHelper
  def blog_host
    "blog.#{root_host}"
  end

  def root_host
    request.host.sub("blog.", "")
  end
end
