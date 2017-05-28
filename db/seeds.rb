# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist1 = Artist.create!({ name: "The Rolling Rubies", img_url: "https://goo.gl/ZF7gGK" })
artist2 = Artist.create!({ name: "Jazzin' Java", img_url: "https://goo.gl/ZOcrNF" })
artist3 = Artist.create!({ name: "The Autocoders", img_url: "https://goo.gl/4YNr8S" })
artist4 = Artist.create!({ name: "Pythonious Monk", img_url: "https://goo.gl/XGp5cJ" })
artist5 = Artist.create!({ name: "Floppy Drivers", img_url: "https://goo.gl/dcjk6U" })
artist6 = Artist.create!({ name: "The Refactory", img_url: "https://goo.gl/7dN4LK" })

artist_count = Artist.all.length
puts "#{artist_count} artists were created."

Song.create!([

  { title: "Comic Sans Emotion", artist: artist1 },
  { title: "Z-shells By The Z-shore", artist: artist1 },
  { title: "Magic Ruby Ride", artist: artist1 },
  { title: "See Sharp", artist: artist1 },
  { title: "We Are Objects", artist: artist2 },
  { title: "Let's Join Tables", artist: artist2 },
  { title: "All We Need Is Validations", artist: artist2 },
  { title: "The Great Compiler", artist: artist2 },
  { title: "It's IN The Computer", artist: artist3 },
  { title: "42 Is The Answer", artist: artist3 },
  { title: "Never Ending Loops", artist: artist3 },
  { title: "Git It Done", artist: artist3 },
  { title: "Bleep Bleep Bleep", artist: artist4 },
  { title: "My Little Nintendo", artist: artist4 },
  { title: "Alone In The Foobar", artist: artist4 },
  { title: "Your Parsing Ways", artist: artist4 },
  { title: "Shake Your Source Code", artist: artist5 },
  { title: "Hip Hip Array", artist: artist5 },
  { title: "Got The Bug", artist: artist5 },
  { title: "Hash It Out", artist: artist5 },
  { title: "A Hard Drive-In", artist: artist6 },
  { title: "The Gem Jam", artist: artist6 },
  { title: "Stack Over Flower", artist: artist6 },
  { title: "Pretty in Print", artist: artist6 },

  ])

  song_count = Song.all.length
  puts "#{song_count} songs were created."
