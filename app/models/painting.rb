class Painting

  attr_reader :title
  attr_accessor :artist, :gallery, :price 

  @@all = []

  def initialize(title, price, gallery,artist)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum{|painting| painting.price.to_i}
  end

end
