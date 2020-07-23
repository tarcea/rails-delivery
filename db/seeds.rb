# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Start deleting Resources"
Resource.destroy_all
puts "Start creating Resources"
puts "....."
puts "........"
puts "............"
puts "..............."
puts "................."
puts "..................."
puts "......................"
Resource.create(url: "https://ruby-doc.org/", description: "Ruby-Doc", discipline: "Ruby")
Resource.create(url: "https://www.google.com")
Resource.create(url: "https://guides.rubyonrails.org/")
Resource.create(url: "https://stackoverflow.com/questions/")
Resource.create(url: "https://rubular.com/")
Resource.create(url: "https://rdoc.info/")
Resource.create(url: "http://rubylearning.com/")
Resource.create(url: "https://getbootstrap.com/")
Resource.create(url: "https://dev.to/ilrock__/reactive-map-with-rails-stimulus-reflex-and-mapbox-1po4")
Resource.create(url: "https://codesandbox.io/")
puts ".........................."
puts "DONE"
