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

  # * `Artist#paintings`
  # * Returns an `array` all the paintings by an artist

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  # `Artist#galleries`
    # * Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    paintings.map {|painting| painting.gallery}
    # binding.pry
  end

  # `Artist#cities`
  # * Return an `array` of all cities that an artist has paintings in

  def cities
    galleries.map {|gallery| gallery.city}
  end

  # * `Artist.total_experience`
    # * Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    total = all.map {|artist|artist.years_experience} 
    total.sum
  end

  # `Artist.most_prolific`
    # * Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  # def self.most_prolific
  #   self.total_experience.max_by
#   end

end
