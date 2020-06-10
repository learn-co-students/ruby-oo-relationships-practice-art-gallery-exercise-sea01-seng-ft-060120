class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  # Painting.total_price`
    # * Returns an `integer` that is the total price of all paintings
  def self.total_price
    total = all.map {|painting|painting.price} 
    total.sum
  end

  

end
