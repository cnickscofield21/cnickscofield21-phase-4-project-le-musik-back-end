# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Seeding Users"
User.create(username: "nick", password: "password", admin: true)
User.create(username: "joey", password: "password", admin: true)


puts "Seeding Artists"
cb = Artist.create(name: "Childish Gambino", image: "childish_gambino.png")
ts = Artist.create(name: "Taylor Swift", image: "taylor_twift.png")
dp = Artist.create(name: "Daft Punk", image: "daft_punk.png")
cp = Artist.create(name: "Coldplay", image: "coldplay.png")

puts "Seeding Albums"

bti = Album.create(title: "Because the Internet", year: 2013, image: "because_the_internet.png")
ts1989 = Album.create(title: "1989", year: 2014, image: "1989.png")
red = Album.create(title: "Red", year: 2012, image: "red.png")
ram = Album.create(title: "Random Access Memories", year: 2013, image: "random_access_memories.png")
mx = Album.create(title: "Mylo Xyloto", year: 2011, image: "mylo_xyloto.png")

puts "Seeding Because the Internet"
Track.create(track: 1, title: "The Library(Intro)", duration: "0:05", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 2, title: "I.Crawl", duration: "3:29", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 3, title: "II. Worldstar", duration: "4:05", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 4, title: "Dial Up", duration: "0:45", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 5, title: "I. The Worst Guys", duration: "3:40", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 6, title: "II. Shadows", duration: "3:52", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 7, title: "III. Telegraph Ave. ('Oakland' by Lloyd)", duration: "3:31", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 8, title: "IV. Sweatpants", duration: "3:01", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 9, title: "3005", duration: "3:54", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 10, title: "Playing Around Before the Party Starts", duration: "0:54", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 11, title: "I. The Party", duration: "1:31", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 12, title: "II. No Exit", duration: "2:52", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 13, title: "Death By Numbers", duration: "0:44", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 14, title: "I. Flight of the Navigator", duration: "5:44", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 15, title: "II. Zealots of Stockholm[Free Information]", duration: "4:51", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 16, title: "III. Urn", duration: "1:13", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 17, title: "I. Pink Toes", duration: "3:27", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 18, title: "II. Earth: The Oldest Computer (The Last Night)", duration: "4:42", year: 2013, album_id: bti.id, artist_id: cb.id)
Track.create(track: 19, title: "III. Life: The Biggest Troll[Andrew Auernheimer]", duration: "5:42", year: 2013, album_id: bti.id, artist_id: cb.id)

puts "Seeding 1989"
Track.create(track: 1, title: "Welcome To New York", duration: "3:33", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 2, title: "Blank Space", duration: "3:52", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 3, title: "Style", duration: "3:51", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 4, title: "Out of the Woods", duration: "3:56", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 5, title: "All You Had To Do Was Stay", duration: "3:13", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 6, title: "Shake It Off", duration: "3:39", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 7, title: "I Wish You Would", duration: "3:27", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 8, title: "Bad Blood", duration: "3:32", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 9, title: "Wildest Dreams", duration: "3:40", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 10, title: "How You Get the Girl", duration: "4:08", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 11, title: "This Love", duration: "4:10", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 12, title: "I Know Places", duration: "3:16", year: 2014, album_id: ts1989.id, artist_id: ts.id)
Track.create(track: 13, title: "Clean", duration: "4:31", year: 2014, album_id: ts1989.id, artist_id: ts.id)

puts "Seeding Red"
Track.create(track: 1, title: "State of Grace", duration: "4:56", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 2, title: "Red", duration: "3:43", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 3, title: "Treacherous", duration: "4:03", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 4, title: "I Knew You Were Trouble", duration: "3:40", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 5, title: "All Too Well", duration: "5:29", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 6, title: "22", duration: "3:52", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 7, title: "I Almost Do", duration: "4:05", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 8, title: "We Are Never Ever Getting Back Together", duration: "3:13", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 9, title: "Stay Stay Stay", duration: "3:26", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 10, title: "The Last Time", duration: "4:59", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 11, title: "Holy Ground", duration: "3:23", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 12, title: "Sad Beautiful Tragic", duration: "4:45", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 13, title: "The Lucky One", duration: "4:00", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 14, title: "Everything Has Changed", duration: "4:05", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 15, title: "Starlight", duration: "3:41", year: 2012, album_id: red.id, artist_id: ts.id)
Track.create(track: 16, title: "Begin Again", duration: "3:58", year: 2012, album_id: red.id, artist_id: ts.id)

puts "Seeding Random Access Memories"
Track.create(track: 1, title: "Give Life Back to Music", duration: "4:34", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 2, title: "The Game of Love", duration: "5:22", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 3, title: "Giorgio by Moroder", duration: "9:05", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 4, title: "Within", duration: "3:49", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 5, title: "Instant Crush", duration: "5:38", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 6, title: "Lose Yourself to Dance", duration: "5:54", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 7, title: "Touch", duration: "8:19", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 8, title: "Get Lucky", duration: "6:10", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 9, title: "Beyond", duration: "4:50", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 10, title: "Motherboard", duration: "5:42", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 11, title: "Fragments of Time", duration: "4:40", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 12, title: "Doin' It Right", duration: "4:11", year: 2013, album_id: ram.id, artist_id: dp.id)
Track.create(track: 13, title: "Contact", duration: "6:21", year: 2013, album_id: ram.id, artist_id: dp.id)

puts "Seeding Mylo Xyloto"
Track.create(track: 1, title: "Mylo Xyloto", duration: "0:42", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 2, title: "Hurts Like Heaven", duration: "4:02", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 3, title: "Paradise", duration: "4:38", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 4, title: "Charlie Brown", duration: "4:45", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 5, title: "Us Against the World", duration: "4:00", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 6, title: "M.M.I.X.", duration: "0:48", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 7, title: "Every Teardrop Is a Waterfall", duration: "4:01", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 8, title: "Major Minus", duration: "3:30", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 9, title: "U.F.O.", duration: "2:18", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 10, title: "Princess of China", duration: "3:59", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 11, title: "Up In Flames", duration: "3:13", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 12, title: "A Hopeful Transmission", duration: "0:33", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 13, title: "Don't Let It Break Yout Heart", duration: "3:54", year: 2011, album_id: mx.id, artist_id: cp.id)
Track.create(track: 14, title: "Up with the Birds", duration: "3:46", year: 2011, album_id: mx.id, artist_id: cp.id)

puts "Done seeding!"
# Track.create(track: , title: "", duration: "", year: , album_id: .id, artist_id: .id)
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
