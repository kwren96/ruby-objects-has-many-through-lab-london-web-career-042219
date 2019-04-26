class Artist
  @@all = []
  attr_accessor :name, :songs, :genre
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genre
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    @songs << Song.new(name, self, genre)
  end
  
  def songs
    artist = self
    @songs.select {|song| song.include?(artist)}
  end
    
  def genres
   @songs.map {|song| song.genre}
  end 
end