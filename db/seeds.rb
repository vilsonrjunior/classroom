# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


USERS = [
  "Caio",
  "Sonia",
  "Guido",
  "Eli",
  "Prima",
  "Peter",
  "Ashwin",
  "Janna",
  "George",
  "Charles",
  "Lorenzo",
  "John",
  "Kane",
  "Yejin",
  "Romain"
]

LEVEL = [
"Beginner",
"Pre Intermediate",
"Intermediate",
"Upper Intermediate",
"Advanced"
]

# PLACE_PHOTOS = [
  #   "https://cdn.thebalibible.com/uploads/galleries/IMG_1216-lr_1521529204.jpg",

#   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCOuS2MJ9wepjXwEoCTxsEDimjz7Wxf23a8Ir9b5DKwYeW3lxYKg",
#   "https://static.asiawebdirect.com/m/bangkok/portals/bali-indonesia-com/homepage/magazine/milk-and-madu-cafe/pagePropertiesImage/milk-and-madu.jpg",
#   "https://lonelyplanetwp.imgix.net/2018/10/Nude_03-2f12614ffc35.jpg?fit=min&q=40&sharp=10&vib=20&w=1470",
#   "https://flightstofancy.com/wp-content/uploads/2018/05/The-Loft-Canggu-Shake.png",
#   "https://media-cdn.tripadvisor.com/media/photo-s/0e/96/3d/54/local.jpg",
#   "https://lh3.googleusercontent.com/GRLUFlVaDejJkz9q-F_e4l9YbHrneuscEt0dld5jhNUDpETnbwIeK5f_4SzdY3luc4rYd26E=w1080-h608-p-no-v0",
#   "https://media-cdn.tripadvisor.com/media/photo-s/10/ce/ac/52/the-marathon-breakfast.jpg",
#   "https://cdn.thebalibible.com/uploads/galleries/18801204475879f85e4b57a_Zibiru_Bottega-Italiana_Bali_28.jpg",
#   "https://images.unsplash.com/photo-1485182708500-e8f1f318ba72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=60.png",
#   "https://media-cdn.tripadvisor.com/media/photo-s/06/ba/c2/6e/avocado-cafe.jpg"
# ]

p 'deleting previous seeds'

Teacher.delete_all
Student.delete_all

p 'deleted seeds'


p '____________________'


p 'creating 5 teachers'


x = 0
5.times do
  teacher = Teacher.new(
        first_name: USERS[x],
        last_name: Faker::Name.last_name,
        # picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
        # username: Faker::Internet.username,
        admin: false,
        language: "English",
        email: "#{USERS[x]}@test.com",
        password: "123456"
      )
  # teacher.remote_photo_url = teacher.picture
  teacher.save!
  x += 1
end

p '__________'

p 'creating 50 students'

x = 0
50.times do
  student = Student.new(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        # picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
        # username: Faker::Internet.username,
        age: rand(5..12),
        level: LEVEL.sample,
        course_id: Course.all.sample
        # email: "#{USERS[x]}@test.com",
        # password: "123456"
      )
  # teacher.remote_photo_url = teacher.picture
  student.save!
  x += 1
end

p '_____________'

p '-----'

p 'creating 1 admin teacher'

admin = Teacher.new(
        first_name: "Vilson",
        last_name: Faker::Name.last_name,
        # picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
        # username: Faker::Internet.username,
        admin: true,
        language: "English",
        email: "vilson@test.com",
        password: "123456"
  )
  admin.save!

  p '____________________'

  p 'creating courses'


  x = 0
12.times do
  course = Course.new(
        name: Faker::Book.title,
        # picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
        # username: Faker::Internet.username,
        description: Faker::Movies::BackToTheFuture.quote,
        level: LEVEL.sample,
        teacher: Teacher.all.sample
        # email: "#{USERS[x]}@test.com",
        # password: "123456"
      )
  # teacher.remote_photo_url = teacher.picture
  course.save!
  x += 1
end

p 'DONE!'

# p 'created 10 users'

#   tomek = User.new(
#         first_name: 'Tomek',
#         last_name: 'Atlast',
#         picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
#         username: 'Tomek',
#         email: 'tomek@test.com',
#         password: "123456"
#       )
#   tomek.remote_photo_url = tomek.picture
#   tomek.save!
#   tomek.save!
#   vilson = User.new(
#         first_name: 'Vilson',
#         last_name: 'Atlast',
#         picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
#         username: 'Vilson',
#         email: 'vilson@test.com',
#         password: "123456"
#       )
#   vilson.remote_photo_url = vilson.picture
#   vilson.save!
#   vilson.save!
#   caio = User.new(
#         first_name: 'Caio',
#         last_name: 'Atlast',
#         picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
#         username: 'Caio',
#         email: 'caio@test.com',
#         password: "123456"
#       )
#   caio.remote_photo_url = caio.picture
#   caio.save!
  # caio.save!

  # NEED TO MAKE SURE THAT WE DO NOT SAVE TWICE

  # UserRelationship.new(follower: tomek, followed: vilson).save!
  # UserRelationship.new(follower: tomek, followed: caio).save!
  # UserRelationship.new(follower: tomek, followed: User.first).save!
  # UserRelationship.new(follower: tomek, followed: User.second).save!
  # UserRelationship.new(follower: caio, followed: vilson).save!
  # UserRelationship.new(follower: caio, followed: tomek).save!
  # UserRelationship.new(follower: caio, followed: User.first).save!
  # UserRelationship.new(follower: caio, followed: User.second).save!
  # UserRelationship.new(follower: vilson, followed: tomek).save!
  # UserRelationship.new(follower: vilson, followed: caio).save!
  # UserRelationship.new(follower: vilson, followed: User.first).save!
  # UserRelationship.new(follower: vilson, followed: User.second).save!

# p '-----'
# p 'creating 10 places'

# x = 0
# 10.times do
#   place = Place.new(
#     name: PLACE_NAMES[x],
#     address: PLACE_ADDRESSES[x]
#     )
#   place.save!
#   x += 1


# p ' creating posts for the place'

#   (1..10).to_a.sample.times do
#     post = Post.new(
#       note: Faker::Restaurant.review,
#       user: User.all.sample,
#       place: place
#       )
#     post.remote_photo_url = PLACE_PHOTOS.sample
#     post.save!
#   end
# end

# p 'created 10 places'
# p '-----'
# p 'creating 30 posts'


# p 'created 30 posts'
# p '-----'
# p 'creating all tags'

# cafe = Tag.new(
#   tag_type: 'venue',
#   name: 'cafe'
#   )
# cafe.save!

# bar = Tag.new(
#   tag_type: 'venue',
#   name: 'bar'
#   )

# bar.save!

# restaurant = Tag.new(
#   tag_type: 'venue',
#   name: 'restaurant'
#   )
# restaurant.save!

# pub = Tag.new(
#   tag_type: 'venue',
#   name: 'pub'
#   )
# pub.save!

# breakfast = Tag.new(
#   tag_type: 'meal',
#   name: 'breakfast'
#   )
# breakfast.save!

# brunch = Tag.new(
#   tag_type: 'meal',
#   name: 'brunch'
#   )
# brunch.save!

# lunch = Tag.new(
#   tag_type: 'meal',
#   name: 'lunch'
#   )
# lunch.save!

# dinner = Tag.new(
#   tag_type: 'meal',
#   name: 'dinner'
#   )
# dinner.save!

# dessert = Tag.new(
#   tag_type: 'meal',
#   name: 'dessert'
#   )
# dessert.save!

# coffee = Tag.new(
#   tag_type: 'meal',
#   name: 'coffee'
#   )
# coffee.save!

# chilled = Tag.new(
#   tag_type: 'vibe',
#   name: 'chilled'
#   )
# chilled.save!

# busy = Tag.new(
#   tag_type: 'vibe',
#   name: 'busy'
#   )
# busy.save!

# elegant = Tag.new(
#   tag_type: 'vibe',
#   name: 'elegant'
#   )
# elegant.save!

# organic = Tag.new(
#   tag_type: 'food',
#   name: 'organic'
#   )
# organic.save!

# vegetarian = Tag.new(
#   tag_type: 'food',
#   name: 'vegetarian'
#   )
# vegetarian.save!

# vegan = Tag.new(
#   tag_type: 'food',
#   name: 'vegan'
#   )
# vegan.save!

# exotic = Tag.new(
#   tag_type: 'food',
#   name: 'exotic'
#   )
# exotic.save!

# small_plates = Tag.new(
#   tag_type: 'food',
#   name: 'small plates'
#   )
# small_plates.save!

# family = Tag.new(
#   tag_type: 'good_for',
#   name: 'family'
#   )
# family.save!

# dates = Tag.new(
#   tag_type: 'good_for',
#   name: 'dates'
#   )
# dates.save!

# working = Tag.new(
#   tag_type: 'good_for',
#   name: 'working'
#   )
# working.save!

# drinks = Tag.new(
#   tag_type: 'good_for',
#   name: 'drinks'
#   )
# drinks.save!

# p 'tags created'
# p '-----'

# p 'creating 60 post_tags'


# 60.times do
# post_tag = PostTag.new(
#   tag: Tag.all.sample,
#   post: Post.all.sample,
#   )
# post_tag.save!
# end

# p 'created 60 post_tags'
# p '-----'
# p 'creating followers / followed relationship'

# 60.times do
#   followed = User.all.sample
#   follower = User.where.not(id: followed.id).sample
#   relationship = UserRelationship.new(follower: follower, followed: followed)
#   relationship.save! if UserRelationship.where(follower_id: follower.id, followed_id: followed.id).empty?
# end

# p 'created!'
# p '-----'
# p 'creating wishlists'

# 30.times do
#   wishlist = WishlistItem.new(
#     place: Place.all.sample,
#     user: User.all.sample,
#     )
#   wishlist.save!
# end

# p 'created wishlists'
