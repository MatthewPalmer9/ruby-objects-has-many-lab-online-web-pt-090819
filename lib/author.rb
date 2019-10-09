require 'pry'

class Author 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def add_post(new_post)
    new_post.author = self
    binding.pry
  end 
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title) 
    add_post(new_post)
    binding.pry
  end 
  
  def posts 
    Post.all.select {|post| post.author = self}
  end 
end