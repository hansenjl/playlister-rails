# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


artists = Artist.create([{name: 'Taylor Swift'}, {name: 'Kanye West'}, {name: "Adele"}, {name:"Pink"}, {name:"Beach Boys"},{name: "Beatles"}, {name:"Ariana Grande"}, {name:"Ed Sheeran"}, {name:"Katy Perry"}])

Song.create([{name: "Out of the Woods", genre: 'pop', artist_id: Artist.first.id},{name: "Blank Space", genre: 'pop', artist_id: Artist.first.id}])
