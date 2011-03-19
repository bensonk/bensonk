atom_feed do |feed|
  feed.title("Benson Kalahar's Blog")
  feed.updated(@posts.first.created_at)
 
  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.id
      entry.title(post.title)
      entry.content(textilize(post.body).to_s, :type => :html)
      entry.updated(post.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")) # needed to work with Google Reader.
      entry.author do |author|
        author.name(post.author ? post.author.name : "unknown author")
      end
    end
  end
end
