class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    self = self.new(song_info[1])
    self.artist_name = song_info[0]
    self
  end

end
