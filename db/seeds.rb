# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Post.create!(title: "Tokyo Travels", author: "Travis Wanderlust", theme: "Travel", body: "This is a blog post about my recent trip to Tokyo. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", picture: "https://www.jnto.go.jp/eng/wp-content/uploads/2016/06/Tokyo.jpg")
p2 = Post.create!(title: "Chicken Katsu Curry Recipe", author: "Miyuki Akiyama", theme: "Food", body: "This is a blog post with a recipe for Chicken Katsu Curry. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", picture: "https://japancentre-images.freetls.fastly.net/recipes/pics/301/main/301_Chicken_Katsu_Curry.jpg?1469573012")

Comment.create!(name: "Becky Basic", body: "OMG! I'm so jealous. Your trip looked amazing.", email: "BasicBecky@email.co.uk", post_id: p1.id)
Comment.create!(name: "Ruth Everton", body: "Lovely. My husband at I once went to Japan...some sort of long boring story...", email: "R_Everton@email.co.uk", post_id: p1.id)
Comment.create!(name: "Amelia Short", body: "Looks delicious, can't wait to try it at home.", email: "Amelia.Short@email.co.uk", post_id: p2.id)