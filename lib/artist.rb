class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.atrist = self
  end

end
