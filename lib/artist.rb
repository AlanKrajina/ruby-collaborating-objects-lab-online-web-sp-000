class Artist
  attr_accessor :name, :songs
    
  @@all =[]

  def initialize(name)
    @name = name
    @songs =[]

  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end  
  
  def add_song(song)
    @songs << song
    song.artist = self
    song
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name).save
    
#   @@all.find {|a| a.name == artist_name } || Artist.new(artist_name)

  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
end


