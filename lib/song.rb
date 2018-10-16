require "pry"

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.chomp(".mp3").split(" - ")
    self.new(artist_and_song[1])


  end


end

