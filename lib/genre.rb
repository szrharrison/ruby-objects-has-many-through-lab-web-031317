class Genre
  def initialize( name )
    @songs = []
    @name = name
  end
  attr_reader :songs, :name
  #####################################################
  def add_song( song )
    @songs << song
    song.genre = self
  end

  def artists
    self.songs.map do |song|
      song.artist
    end.uniq
  end
end
