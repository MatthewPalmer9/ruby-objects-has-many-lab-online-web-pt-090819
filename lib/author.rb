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
  
  def add_post(post)
    post.author = self
  end 
  
  def add_post_by_title(title)
    postName = Post.new(title) 
    add_post(postName)
  end 
  
  # def add_song_by_name(song_name)
   # song = Song.new(song_name)
    # add_song(song)
  # end 
  
  def posts 
    Post.all.select {|post| post.author = self}
  end 
end