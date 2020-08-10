require_relative '../config/environment.rb'

shiny_gallery = Gallery.new("Shiny Gallery", "NYC")
high_gallery = Gallery.new("High Gallery", "NYC")
low_gallery = Gallery.new("Low Gallery", "NJ")
rich_gallery = Gallery.new("Rich Gallery", "CA")
# ==================================================================
mike = Artist.new("Mike", 3)
susan = Artist.new("Susan", 1)
jeff = Artist.new("Jeff", 4)
nike = Artist.new("Nike", 7)
rin = Artist.new("Rin", 2)
# =====================================================================
laugh_at_me = Painting.new("Laugh at me", 14.00,high_gallery,rin)
monkey_see = Painting.new("Monkey See", 12.00,high_gallery,nike)
by_the_water = Painting.new("By the water", 23.00,high_gallery,jeff)
clash_of_war = Painting.new("Clash of war", 13.00,high_gallery,jeff)
dog_out = Painting.new("Dog out", 53.00,low_gallery,jeff)
cat_out = Painting.new("Cat out", 53.00,rich_gallery,susan)
rat_out = Painting.new("Rat out", 54.00,low_gallery,mike)
high_five = Painting.new("High Five", 30.00,shiny_gallery,mike)
# =======================================================================

binding.pry

puts "Bob Ross rules."
