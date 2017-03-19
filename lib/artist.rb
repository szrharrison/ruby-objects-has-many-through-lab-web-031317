class Artist
  def initialize( name )
    @songs = []
    @name = name
  end
  attr_reader :songs, :name
  #####################################################
  def add_song( song )
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.map do |song|
      song.genre
    end.uniq
  end

end
