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
  { first_name: 'Nickoma',
    last_name: 'Ceaser',
    email: 'nickomaceaser@gmail.com',
    description: "Hey, my names Nickoma I from NYC and i made aliyah 3 years ago. I live in Gush Etzion and don't get out much, but I love  getting out and making the most of the night .",
    password: '666666',
    birth_date: '1984-12-18',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1551697969/nickoma_avatar.jpg"
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
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550568210/imageedit_1_3230602212.gif"
  },
   {
    first_name: 'Avi',
    last_name: 'Flechmen',
    email: 'avi@test.com',
    description: "Hi! I'm Avi after a long day in advertising I love to go out after dinner with my family.",
    password: '123456',
    birth_date: '1990-08-23',
    remote_photo_url: "https://res.cloudinary.com/dzgpovo2n/image/upload/v1550162292/ajtuhyqp64i3ljvsbe0w.png"
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
nick = User.find_by(first_name: "Nickoma")
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

puts 'I am creating events now!'

Event.create!(
  title: 'Night Out at Mondo 2000',
  description: "Mondo 2000 hosts awesome Saturday Night parties as well as theme nights and is always better in a group.
  ",
  latitude: 32.0599213,
  longitude: 34.7716146,
  host: adam,
  address: 'Levinsky 39, Tel Aviv-Yafo',
  activity: party,
  date: '2019-03-08',
  time: '22:00'
)

Event.create!(
  title: 'Silent trance party at Meir Garden',
  description: "Come dance the night away at DJ Envy's Bluetooth Bash in the park. 50 nis deposit for headphone rental.",
  latitude: 32.0728047,
  longitude: 34.7742087,
  host: don,
  address: 'King George St 35, Tel Aviv-Yafo',
  activity: party,
  date: '2019-03-08',
  time: '21:00'
)

Event.create!(
  title: 'Casual Beach Hangout',
  description: "Let's all meet at Banana Beach for some volleyball, BBQ
  and a drinks till dawn.",
  latitude: 32.0706988,
  longitude: 34.7640043,
  host: don,
  address: 'Retsif Herbert Samuel St 29, Tel Aviv-Yafo',
  activity: beach,
  date: '2019-03-09',
  time: '12:00'
)


Event.create!(
  title: 'Jerusalem Beach Tiki Party',
  description: "Lets take over the Beach with a impromptu to Tiki Party. We'll provide the grill and Tiki accessories. Dress in your favorite island wear.",
  latitude: 32.0734067,
  longitude: 34.7650128,
  host: nick,
  address: 'Retsif Herbert Samuel 55, Tel Aviv-Yafo',
  activity: beach,
  date: '2019-03-09',
  time: '13:00'
)

Event.create!(
  title: 'Nagila and New Wave',
  description: "Come check out our New Wave night at Rafiki's Nagila and grill.",
  latitude: 32.0817267,
  longitude: 34.7676036,
  host: don,
  address: 'Shlomo Lahat Promenade 17, Tel Aviv-Yafo',
  activity: lounge,
  date: '2019-03-08',
  time: '22:00'
)

Event.create!(
  title: 'Best of Blues Tribute',
  description: "Come check out the best blues artist in Tel Aviv covering their favorite songs.",
  latitude: 32.0772271,
  longitude: 34.7666045,
  host: don,
  address: 'Retsif Herbert Samuel St 90, Tel Aviv-Yafo',
  activity: lounge,
  date: '2019-03-08',
  time: '21:00'
)

Event.create!(
  title: 'Shopping at Dizengoff Mall',
  description: "Who wants to go shopping? I always have issues picking what fits.
  Anyone wants to join me?",
  latitude: 32.0753462,
  longitude: 34.7753948,
  host: don,
  address: 'Dizengoff St 50, Tel Aviv-Yafo',
  activity: shopping,
  date: '2019-03-07',
  time: '19:00'
)

Event.create!(
  title: 'A Star is Born',
  description: "Who wants to check out the Master of Horror marathon on the big screen. ",
  latitude: 32.0782883,
  longitude: 34.7735301,
  host: eve,
  address: 'Ben Ami St 16, Tel Aviv-Yafo',
  activity: cinema,
  date: '2019-03-08',
  time: '10:45'
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
