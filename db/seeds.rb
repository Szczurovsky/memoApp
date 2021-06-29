# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
(1..100).each {|i| Meme.create(name: i, file: "./public/pictures/#{i}.png")}
p "Created #{Meme.count} memes"
=======
(1..100).each {|i| Mem.create(name: i, file: "./public/pictures/#{i}.png")}
p "Created #{Mem.count} memes"
>>>>>>> cf1a89de53f9a93fcd80b1c570d46e65304c0b75
