# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Bob", email: "bob@example.com", password: "password")
User.create(name: "Test", email: "test@example.com", password: "password")

Quote.create(author: "Author1", image: "quote1.jpg", category: "Self Care")
Quote.create(author: "Author2", image: "quote2.jpg", category: "Leadership")
Quote.create(author: "Author3", image: "quote3.jpg", category: "Self Care")
Quote.create(author: "Author4", image: "quote4.jpg", category: "Body Positivity")

SavedQuote.create(user_id: 2, quote_id: 1)
SavedQuote.create(user_id: 1, quote_id: 2)
SavedQuote.create(user_id: 2, quote_id: 3)
SavedQuote.create(user_id: 2, quote_id: 4)
SavedQuote.create(user_id: 1, quote_id: 3)

Video.create!(url: "https://www.youtube.com/watch?v=OkIjRPo1CW0", category: "black joy")
Video.create!(url: "https://www.youtube.com/watch?v=asVhafDASjo", category: "black liberation")
Video.create!(url: "https://www.youtube.com/watch?v=NAhVXw4QP8s&t=70s", category: "laughter/comedy")
Video.create!(url: "https://www.youtube.com/watch?v=zVc-K1kKkVk", category: "black joy")

SavedVideo.create!(user_id: 1, video_id: 1)
SavedVideo.create!(user_id: 2, video_id: 2)
SavedVideo.create!(user_id: 3, video_id: 3)
SavedVideo.create!(user_id: 4, video_id: 4)

Game.create(url: "https://patatap.com/", category: "Guided Rhythm Making")
Game.create(url: "http://interactive.usc.edu/projects/cloud/flowing/", category: "Meditation")
Game.create(url: "http://gambolio.com/#/game-play:19583/", category: "Meditation")
Game.create(url: "https://patatap.com/", category: "Guided Rhythm Making")

SavedGame.create(user_id: 1, game_id: 4)
SavedGame.create(user_id: 2, game_id: 3)
SavedGame.create(user_id: 3, game_id: 2)
SavedGame.create(user_id: 4, game_id: 1)
