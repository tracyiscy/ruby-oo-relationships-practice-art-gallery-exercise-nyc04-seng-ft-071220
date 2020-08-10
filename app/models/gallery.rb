class Gallery

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end

  def self.all
    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    (paintings.map{|painting| painting.artist}).uniq
  end

  def artists_names
    artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    paintings.max_by{|painting| painting.price}
  end
end
