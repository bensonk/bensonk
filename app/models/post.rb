class Post < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  scope :published, where(:published => true)
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
