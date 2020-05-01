User.destroy_all
Vibe.destroy_all
Imbibe.destroy_all 

user1 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
user2 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
user3 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
user4 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")
user5 = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "password")

vibe1 = Vibe.create(song: Faker::Music.album, artist: Faker::Music.band)
vibe2 = Vibe.create(song: Faker::Music.album, artist: Faker::Music.band)
vibe3 = Vibe.create(song: Faker::Music.album, artist: Faker::Music.band)
vibe4 = Vibe.create(song: Faker::Music.album, artist: Faker::Music.band)
vibe5 = Vibe.create(song: Faker::Music.album, artist: Faker::Music.band)

Imbibe.create(user_id: user1.id, vibe_id: vibe1.id, drink: "Bloody Mary", toast_headline: "Bunch In A glass", toast_body: "I didn't want to cook!")
Imbibe.create(user_id: user2.id, vibe_id: vibe2.id, drink: "Shirley Temple", toast_headline: "I'm Not 21", toast_body: "Kids like to drink too!")
Imbibe.create(user_id: user3.id, vibe_id: vibe3.id, drink: "Long Island Iced Tea", toast_headline: "I'm on vacation!", toast_body: "Why be responsible?")
Imbibe.create(user_id: user4.id, vibe_id: vibe4.id, drink: "Cold Brew Coffee", toast_headline: "Summer Is Coming", toast_body: "Just kidding, I drink cold brew all of the time")
Imbibe.create(user_id: user5.id, vibe_id: vibe5.id, drink: "Rum And Coke", toast_headline: "I'm A Classic!", toast_body: "It's'easy to make and always in style.")
