# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all events!!!"
## Clear all services
Event.destroy_all

puts "destroying all users!!!"
## clear old users
User.destroy_all

users = [
  { first_name: 'Adam',
    last_name: 'Black',
    email: 'adam@test.com',
    description: "Hi! I'm Adam and I would love to go out with you!",
    password: '123456',
    birth_date: '1987-4-23' },
  {
    first_name: 'Eve',
    last_name: 'Mendona',
    email: 'eve@test.com',
    description: "Hi! I'm Eve and I would love to go out with you!",
    password: '123456',
    birth_date: '1990-8-15'
  },
  {
    first_name: 'Donald',
    last_name: 'Trump',
    email: 'don@test.com',
    description: "Hi! I'm Donald and I would love to go out with you!",
    password: '123456',
    birth_date: '1990-8-15'
  }
]

puts 'I am creating users now!'
User.create!(users)

adam = User.find_by(first_name: "Adam")
don = User.find_by(first_name: "Donald")
eve = User.find_by(first_name: "Eve")

activities = [
  { name: 'Bar' },
  { name: 'Party' },
  { name: 'Shopping' }
]

puts 'I am creating activities now!'
  Activity.create!(activities)

bar = Activity.find_by(name: 'Bar')
party = Activity.find_by(name: 'Party')
shopping = Activity.find_by(name: 'Shopping')

interests = [
  { name: 'Upscale', category: 'Bar' },
  { name: 'Live Bars', category: 'Bar' },
  { name: 'Electro', category: 'Party' },
  { name: 'Festivals', category: 'Party' }
]

puts 'I am creating interests now!'
Interest.create!(interests)

user_interest = [
  { user: adam, interest: Interest.all.sample },
  { user: don, interest: Interest.all.sample },
  { user: eve, interest: Interest.all.sample }
]

puts 'I am creating user interests now!'
UserInterest.create!(user_interest)

adam = UserInterest.find_by(user: adam)
don = UserInterest.find_by(user: don)
eve = UserInterest.find_by(user: eve)

upscale = Interest.find_by(name: 'Upscale')
live_bars = Interest.find_by(name: 'Live Bars')
electro = Interest.find_by(name: 'Electro')
festivals = Interest.find_by(name: 'Festival')

puts 'done making seeds!'
