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
Course.delete_all

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
20.times do
  student = Student.new(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        # picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
        # username: Faker::Internet.username,
        age: rand(5..12),
        level: LEVEL.sample,
        course: Course.all.sample
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
5.times do
  course = Course.new(
        name: Faker::Book.title,
        # picture: "https://randomuser.me/api/portraits/#{['wo',''].sample}men/#{(0..99).to_a.sample}.jpg",
        # username: Faker::Internet.username,
        description: Faker::Movies::BackToTheFuture.quote,
        level: LEVEL.sample,
        teacher: Teacher.all.sample,
        students: Student.all.sample(4)
        # email: "#{USERS[x]}@test.com",
        # password: "123456"
      )
  # teacher.remote_photo_url = teacher.picture
  course.save!
  x += 1
end

p '_________________________'

p 'DONE!'
