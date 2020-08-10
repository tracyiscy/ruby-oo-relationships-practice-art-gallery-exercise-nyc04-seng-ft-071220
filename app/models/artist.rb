class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|painting| painting.city ? painting.city : nil}
  end

  def self.total_experience
    self.all.sum{|artist| artist.years_experience.to_i}
  end

  def self.most_ptolific
    self.all.max_by{|artist| artist.years_experience}
  end

  def create_painting(title,price,gallery)
    Painting.new(title, price, gallery,self)
  end
end
