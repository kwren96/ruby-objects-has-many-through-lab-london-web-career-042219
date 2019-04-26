class Genre
  attr_accessor :name, :songs, :artist
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @artist
    @songs = []
    @@all << self
  end
  
  def songs
    @songs.each {|song| song.include?(self)}
  end
  
  def artists
    @songs.maps {|song| song.artist}
  end
  
end