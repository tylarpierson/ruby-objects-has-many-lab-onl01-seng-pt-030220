class Author 
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @posts = [] 
  end 
  def posts 
   Post.all.select {|posts| posts.artist == self} 
  end 
end 