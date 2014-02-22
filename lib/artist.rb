class Artist
  attr_accessor :name, :songs
  
  def self.find_by_name(name)
    all.detect{|a| a.name == name}
  end

  def self.list
    all.each_with_index do |o, index|
      puts "#{index+1}. #{o.name}"
    end
  end

  def initialize
    self.class.all << self
    @songs = []
  end

  def self.reset_artists
    reset_all
  end

  # def self.action(index)
  #   self.all[index-1].list_songs
  # end

  def self.list_songs(index)
    self.all[index -1].list_songs
  end

  def list_songs
    # avi initially had this as Song.all and then filtered by if s.genre == self
    # this should be pulled out of both artist and genre into listable
    self.songs.each_with_index do |s, index|
      puts "#{index+1}. #{s.name}"
    end
  end

  def genres
    songs.collect{|s| s.genre}.flatten.compact.uniq
  end

  def songs_count
    songs.size
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def count
    self.class.all.size
  end

  def self.count
    @all.size
  end

  def self.all
    @all
  end

  def self.reset_all
    @all = []
  end

  reset_artists

end

