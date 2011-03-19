class Post < ActiveRecord::Base
  scope :published, where(:published => true)
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
