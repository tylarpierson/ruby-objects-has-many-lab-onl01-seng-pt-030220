class Author 
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @posts = [] 
  end 
  def posts 
   Post.all.select {|posts| posts.author == self} 
  end 
  def add_post(post) 
    post.author = self 
  end 
  def add_post_by_title(title) 
    post = Post.new(title)
    add_post(titl)
  end 
end 