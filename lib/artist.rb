class Artist
  
  #### Attributes ####
  attr_accessor :name
  @@all = []
  
  
  #### Instance methods ####
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def add_song(song_obj)
    song_obj.artist = self
  end
  
  def songs
    artist_name = self.name
    Song.all.select {|song| song.artist.name == artist_name}
  end
  
  def print_songs
    my_songs = songs
    my_songs.each {|song| puts "#{song.name}"}
  end
  
  #### Class methods ####
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if (@@all.select {|artist_obj| artist_obj.name == name} == [])
      artist = self.new(name)
    else
      artist = @@all.select {|artist_obj| artist_obj.name == name}
    end
    artist
  end
end