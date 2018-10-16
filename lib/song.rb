require "pry"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.chomp(".mp3").split(" - ")
    self.new(artist_and_song[1])
    self.artist(artist_and_song[0])


  end

end
