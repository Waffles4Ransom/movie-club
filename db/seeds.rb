# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

anna = User.create(first_name: "Anna", last_name: "Millholland", email: "amillholland@denverartmuseum.org", password: "annapassword")
Profile.create(user_id: anna.id, username: "animalholland", member_title: "CEO of Looks", fav_movie: "Notting Hill", profile_photo: "https://i.imgur.com/9e5IlgD.png")

christine = User.create(first_name: "Christine", last_name: "Carey", email: "ccarey@denverartmuseum.org", password: "christinepassword")
Profile.create(user_id: christine.id, username: "cvcarey", member_title: "VP of Taste", fav_movie: "Only Lovers Left Alive", profile_photo: "https://i.imgur.com/6sBu4kk.png")

judy = User.create(first_name: "Judy", last_name: "Gehrke-Gilbert", email: "jgehrke-gilbert@denverartmuseum.org", password: "judypassword")
Profile.create(user_id: judy.id, username: "judylee", member_title: "Candy Aficionado", fav_movie: "Beyond the Valley of the Dolls", profile_photo: "https://i.imgur.com/YS6EZqs.jpg")

aric = User.create(first_name: "Aric", last_name: "Wheeler", email: "awheeler@denverartmuseum.org", password: "aricpassword")
Profile.create(user_id: aric.id, username: "aricwheeler", member_title: "Premier of Popcorn", fav_movie: "The Babadook", profile_photo: "https://i.imgur.com/sogzU49.png")

emily = User.create(first_name: "Emily", last_name: "Barrett Rodriguez", email: "erodriguez@denverartmuseum.org", password: "emilypassword")
Profile.create(user_id: emily.id, username: "emilylou", member_title: "Secretary of Sodas", fav_movie: "Beetlejuice", profile_photo: "https://i.imgur.com/ECUemcl.png")

oliver = User.create(first_name: "Oliver", last_name: "Clough", email: "oclough@denverartmuseum.org", password: "oliverpassword")
Profile.create(user_id: oliver.id, username: "lastjediwasawesome", member_title: "Minister of Propaganda", fav_movie: "Cannibal Holocaust", profile_photo: "https://i.imgur.com/NY6oSMy.jpg" )

rachelle = User.create(first_name: "Rachelle", last_name: "Hubbell", email: "rhubbell@denverartmuseum.org", password: "rachellepassword")
Profile.create(user_id:rachelle.id, username: "roroCO", member_title: "Historian", fav_movie: "Quick Change", profile_photo: "https://i.imgur.com/z3QtDH9.png" )

movies = [
  {
    title: "The Beguiled",
    director: "Sofia Coppola",
    release_year: 2017,
    genre: "Thriller",
    date_attended: "2017-07-07",
    showtime: "8:15 PM",
    theater: "Landmark Esquire",
    poster_image: "https://i.imgur.com/6jLsNht.jpg"
  },
  {
    title: "Wonder Woman",
    director: "Patty Jenkins",
    release_year: 2017,
    genre: "Action",
    date_attended: "2017-14-07",
    showtime: "6:45 PM",
    theater: "Alamo Drafthouse Sloan's Lake",
    poster_image: "https://i.imgur.com/hJURSbj.jpg"
  },
  {
    title: "Black Panther",
    director: "Ryan Coogler",
    release_year: 2018,
    genre: "Action",
    date_attended: "2018-03-27",
    showtime: "7:30 PM",
    theater: "Alamo Drafthouse Sloan's Lake",
    poster_image: "https://i.imgur.com/uCJwkki.jpg"
  },
  {
    title: "Amélie",
    director: "Jean-Pierre Jeunet",
    release_year: 2001,
    genre: "Romance",
    date_attended: "2019-02-13",
    showtime: "7:00 PM",
    theater: "Alamo Drafthouse Sloan's Lake",
    poster_image: "https://i.imgur.com/c8dZ9c4.jpg"
  },
  {
    title: "Us",
    director: "Jordan Peele",
    release_year: 2019,
    genre: "Horror",
    date_attended: "2019-03-28",
    showtime: "8:00 PM",
    theater: "Alamo Drafthouse Sloan's Lake",
    poster_image: "https://i.imgur.com/OYcsPfz.jpg"
  },
  {
    title: "Booksmart",
    director: "Olivia Wilde",
    release_year: 2019,
    genre: "Comedy",
    date_attended: "2019-06-03",
    showtime: "7:00 PM",
    theater: "Alamo Drafthouse Sloan's Lake",
    poster_image: "https://i.imgur.com/v6SuM7s.jpg"
  },
  {
    title: "The Dead Don't Die",
    director: "Jim Jarmusch",
    release_year: 2019,
    genre: "Fantasy",
    date_attended: "2019-06-20",
    showtime: "8:00 PM",
    theater: "Landmark Esquire",
    poster_image: "https://i.imgur.com/n4WldEf.jpg"
  },
  {
    title: "Once Upon a Time in Hollywood",
    director: "Quentin Tarantino",
    release_year: 2019,
    genre: "Drama",
    date_attended: "2019-07-31",
    showtime: "7:00 PM",
    theater: "Alamo Drafthouse Sloan's Lake",
    poster_image: "https://i.imgur.com/NC3zDQn.jpg"
  }
 ]

 movies.each{ |m| Movie.create(m) }