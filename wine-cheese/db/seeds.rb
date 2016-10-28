# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bob = User.create(name: "Bob", email: "bob@bobby.com", password: "bob")
dave = User.create(name: "Dave", email: "dave@dave.com", password: "dave")
katrina = User.create(name: "Katrina", email: "katrina@katrina.com", password: "katrina")

bob_poster = Poster.create(user_id: bob.id)
bob_poster.user = bob

dave_poster = Poster.create(user_id: dave.id)
dave_poster.user = dave

katrina_poster = Poster.create(user_id: katrina.id)
katrina_poster.user = katrina

region1 = Region.create(name: "Jersey")

wine_brand1 = WineBrand.create(name: "Two-Buck-Chuck")

category1 = Category.create(name: "Pinot Noir")

wine1 = Wine.create(category_id: category1.id, year: 2000, wine_brand_id: wine_brand1.id, region_id: region1.id)

cheese_brand1 = CheeseBrand.create(name: "Kraft")

cheese1 = Cheese.create(name: "Brie", cheese_brand_id: cheese_brand1.id)

pairing1 = Pairing.create(wine_id: wine1.id, cheese_id: cheese1.id)

post1 = Post.create(poster_id: bob_poster.id, pairing_id: pairing1.id, title: "First Post", content: "THIS IS BOB'S CONTENT!")
post2 = Post.create(poster_id: bob_poster.id, pairing_id: pairing1.id, title: "Second Post", content: "THIS IS BOB'S SECOND CONTENT!")


bob_reviewer = Reviewer.create(user_id: bob.id)
bob_reviewer.user = bob

bob_review = Review.create(reviewer_id: bob_reviewer.id, post_id: post1.id)
