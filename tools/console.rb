require_relative '../config/environment.rb'






pic = Artist.new("Picasso", 20)
bob = Artist.new("Bob", 30)
rob = Artist.new("Rob", 10)

seattle = Gallery.new("SAM", "Seattle")
new_york = Gallery.new("The Met", "New York")
chicago = Gallery.new("Chicago Art Meuseam", "Chicago")

p1 = Painting.new("Rock", 500, pic, seattle)
p2 = Painting.new("Paper", 400, bob, seattle)
p3 = Painting.new("Scissors", 200, rob, chicago)
p4 = Painting.new("Bomb", 1000, pic, new_york)

binding.pry
puts "Bob Ross rules."
