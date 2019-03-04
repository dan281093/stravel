# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'attendees will die'
Attendee.destroy_all

puts "destroying all users!!!"
## clear old users
User.destroy_all

puts "destroying all events!!!"
## Clear all services
Event.destroy_all


puts "destroying all activities!!!"
Activity.destroy_all

users = [
  { first_name: 'Adam',
    last_name: 'Black',
    email: 'adam@test.com',
    description: "Hi! I'm Adam. I'm 31 years old. I work as accountant and I love to go out and meet new people.",
    password: '123456',
    birth_date: '1987-04-23',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692132/mryb6kbsgcp3594bwrhc.jpg"
  },
  {
  first_name: 'Ashley',
  last_name: 'Tremmel',
  email: 'ashley@test.com',
  description: "Hi! I'm Ashley. I just made Aliyah and can't wait to make friends and start my new life.",
  password: '123456',
  birth_date: '1996-10-15',
  remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692335/iyozkwhn0exam4pasjjv.jpg"
  },
  {
  first_name: 'Osher',
  last_name: 'Allen',
  email: 'osher@test.com',
  description: "Hi! I'm new to the city! By day I'm a coder, but by night I'm lead guitarist in the Bloody Zebras",
  password: '123456',
  birth_date: '1995-10-15',
  remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692267/jeh6cw5jxohoh9kdty5t.jpg"
  },
  {
    first_name: 'Eve',
    last_name: 'Mendona',
    email: 'eve@test.com',
    description: "Hi! I'm Eve I'm mixologist would love to wind down girl after work. Low-key and drama free.",
    password: '123456',
    birth_date: '1990-12-18',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692392/ema4dkvzzzxzvass5fbi.jpg"
  },
  {
    first_name: 'Chiam',
    last_name: 'Trudel',
    email: 'chiam@test.com',
    description: "Hey, I'm fresh out of the army and I can't wait to make new friends and enjoy life.",
    password: '123456',
    birth_date: '1997-04-15',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692707/28335858_1738503206216640_5528359417228973702_o.jpg"
  },
   {
    first_name: 'Avi',
    last_name: 'Flechmen',
    email: 'avi@test.com',
    description: "Hi! I'm Avi after a long day in advertising I love to go out after dinner with my family.",
    password: '123456',
    birth_date: '1990-08-23',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692132/mryb6kbsgcp3594bwrhc.jpg"
  },
  {
    first_name: 'Donald',
    last_name: 'Johnson',
    email: 'don@test.com',
    description: "Hi! I'm Donald own a boat rental pier and give fun tours during the day. I'm always down for a night outdoors",
    password: '123456',
    birth_date: '1990-03-25',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551692707/28335858_1738503206216640_5528359417228973702_o.jpg"
  }
]

puts 'I am creating users now!'
User.create!(users)

adam = User.find_by(first_name: "Adam")
don = User.find_by(first_name: "Donald")
eve = User.find_by(first_name: "Eve")
avi = User.find_by(first_name: "Avi")
chiam = User.find_by(first_name: "Chiam")
ashely = User.find_by(first_name: "Ashely")
osher = User.find_by(first_name: "Osher")
activities = [
  { name: 'Party' },
  { name: 'Bar' },
  { name: 'Beach' },
  { name: 'Lounge' },
  { name: 'Shopping' },
  { name: 'Cinema' }
]

puts 'I am creating activities now!'
  Activity.create!(activities)

party = Activity.find_by(name: 'Party')
bar = Activity.find_by(name: 'Bar')
beach = Activity.find_by(name: 'Beach')
lounge = Activity.find_by(name: 'Lounge')
shopping = Activity.find_by(name: 'Shopping')
cinema = Activity.find_by(name: 'Cinema')

interests = [
  { name: 'Upscale', category: 'Bar' },
  { name: 'Live Bars', category: 'Bar' },
  { name: 'Electro', category: 'Party' },
  { name: 'Festivals', category: 'Party' }
]

puts 'I am creating events now!'

Event.create!(
  title: 'Night Out at Mondo 2000',
  description: "Mondo 2000 hosts awesome Saturday Night parties as well as theme nights and is always better in a group.
  ",
  latitude: 31.7811283,
  longitude: 35.2157765,
  host: adam,
  address: 'Levinsky 39, Tel Aviv-Yafo',
  activity: party,
  date: '2019-08-04',
  time: '22:00'
)

Event.create!(
  title: 'Silent trance party at Meir Garden',
  description: "Come dance the night away at DJ Envy's Bluetooth Bash in the park. 50nis deposit for headphone rental.",
  latitude: 32.072774,
  longitude: 34.773843,
  host: don,
  address: 'King George St 35, Tel Aviv-Yafo',
  activity: party,
  date: '2019-08-04',
  time: '21:00'
)

Event.create!(
  title: 'Casual Beach Hangout',
  description: "Let's all meet at Banana Beach for some volleyball, BBQ
  and a drinks till dawn.",
  latitude: 32.0696247,
  longitude: 34.7630231,
  host: don,
  address: 'HaYarkon St 19, Tel Aviv-Yafo',
  activity: beach,
  date: '2019-08-04',
  time: '19:00'
)


Event.create!(
  title: 'Jerusalem Beach Tiki Party',
  description: "Lets take over the Beach with a impromt to Tiki Party. Will provide the grill and Tiki accesories. Dress in your favorite island wear.",
  latitude: 32.073676,
  longitude: 34.764441,
  host: don,
  address: 'Retsif Herbert Samuel St 58, Tel Aviv-Yafo',
  activity: beach,
  date: '2019-08-04',
  time: '18:00'
)

Event.create!(
  title: 'Nagila and New Wave',
  description: "Come check out our New Wave night at Raffikis Nagila and grill.",
  latitude: 32.080414,
  longitude: 34.767204,
  host: don,
  address: 'Shlomo Lahat Promenade 17. Tel Aviv-Yafo',
  activity: lounge,
  date: '2019-08-04',
  time: '23:00'
)

Event.create!(
  title: 'Best of Blues Tribute',
  description: "Come check out the best blues artist in Tel Aviv covering their favorite songs.",
  latitude: 32.077523,
  longitude: 34.766293,
  host: don,
  address: 'Retsif Herbert Samuel St 94, Tel Aviv-Yafo',
  activity: lounge,
  date: '2019-08-04',
  time: '22:00'
)

Event.create!(
  title: 'Shopping at Dizengoff Mall',
  description: "Who wants to go shopping? I always have issues picking what fits.
  Anyone wants to join me?",
  latitude: 32.0754357,
  longitude: 34.7757615,
  host: don,
  address: 'Dizengoff St 50, Tel Aviv-Yafo',
  activity: shopping,
  date: '2019-08-04',
  time: '19:00'
)

Event.create!(
  title: 'A Star is Born',
  description: "Who wants to check out the Master of Horror marathon on the big screen. ",
  latitude: 32.0843995,
  longitude: 34.774258,
  host: eve,
  address: 'Dizengoff St 50, Tel Aviv-Yafo',
  activity: cinema,
  date: '2019-08-04',
  time: '19:45'
)

event1 = Event.find_by(title: 'Night Out at Mondo 2000')
event2 = Event.find_by(title: 'Casual Beach Hangout at Banana Beach')
event3 = Event.find_by(title: 'Shopping at Dizengoff Mall')
event4 = Event.find_by(title: 'A Star is Born')
event5 = Event.find_by(title: 'Silent trance party at Meir Garden')
event6 = Event.find_by(title: 'Jerusalem Beach Tiki Party')
event7 = Event.find_by(title: 'Nagila and New Wave')
event8 = Event.find_by(title: 'Best of Blues Tribute')
puts 'done making seeds!'
