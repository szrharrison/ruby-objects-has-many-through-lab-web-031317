class Song
  def initialize( name, genre )
    @name = name
    genre.add_song( self )
  end
  attr_accessor :artist, :genre, :name
  #####################################################
end
