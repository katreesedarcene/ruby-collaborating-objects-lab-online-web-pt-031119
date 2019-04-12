require "pry"
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    song = Song.new(filename)
    song = filename.split(" - ")[1]
    new_song_instance = self.new(song)
    new_song_instance.artist_name = artist
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end