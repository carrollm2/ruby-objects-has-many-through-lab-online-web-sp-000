class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)

    song_names = []
    @songs.each do |song|
      song_names << song.name
    end

    if song_names.include?(song_name) == false
      new_song = Song.new(song_name, self, genre)
      @songs << new_song
    end
    new_song
  end


  def songs
    Song.all.select { |song| song.artist.name == self.name}
  end

  def genres
    genres = []
    @songs.each do |song|
      if genres.include?(song.genre) == false
        genres << song.genre
      end
    end
    genres
  end

end
