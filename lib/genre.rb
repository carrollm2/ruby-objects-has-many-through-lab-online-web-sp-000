class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre.name == self.name}
  end

  def artists
    artist_list = []
    Song.all.each do |song|
      if artist_list.include?(song.artist.name) == false
        artist_list <<  song.artist
      end
    end
    artist_list
  end

end
