class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  # * `Gallery#paintings`
  #   * Returns an `array` of all paintings in a gallery
  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  # * `Gallery#artists`
    # * Returns an `array` of all artists that have a painting in a gallery

  def artists
    paintings.map {|painting| painting.artist}
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

end
