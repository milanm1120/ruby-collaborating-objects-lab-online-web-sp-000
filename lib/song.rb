class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    split_name = filename.split (" - ")
    self.new(split_name[1])
    song.artist = Artist.find_or_create_by_name(split_name[0])
    song
  end

end
