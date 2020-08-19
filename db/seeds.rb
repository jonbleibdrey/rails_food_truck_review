# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FoodTruck.create(name: "taco hut", category: "mexican", phone: 9085612345, user_id: 1, review_id: 1)
FoodTruck.create(name: "indian palace", category: "indian", phone: 9085612003, user_id: 1, review_id: 1)
FoodTruck.create(name: "american franks", category: "american", phone: 9085612004, user_id: 1, review_id: 2)
FoodTruck.create(name: "meatballs", category: "italian", phone: 9085612012, user_id: 1, review_id: 3)

Review.create(title: "that place was the worst", detail: "he pooped in my cereal", rating: 1, recommend: false )
Review.create(title: "it was so good", detail: "i orderd the food and it was great", rating: 4, recommend: true )
Review.create(title: "so so", detail: "ill go back for sure", rating: 5, recommend: true )
Review.create(title: "i loved it so much", detail: "so lovely", rating: 3, recommend: false )

