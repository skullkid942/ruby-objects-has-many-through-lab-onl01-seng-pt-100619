class Genre 
  
  @@all = []
  attr_accessor :song,:name,:genre  
  
  def initialize(name)
    @name = name
    @@all << self 
  end 

  def self.all
    @@all
  end 
  
  def songs 
    Song.all.select{|song| song.genre == self}  
  end
  
  def artists
    Song.all.map do |song| 
      song.artist
    end 
  end

end