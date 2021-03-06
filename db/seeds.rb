# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comedian.destroy_all

bill = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
joe = Comedian.create(name: "Joe Rogan", age: 51, birthplace: "Newark, NJ", image_url: "https://pbs.twimg.com/profile_images/552307347851210752/vrXDcTFC_400x400.jpeg")
joey = Comedian.create(name: "Joey Diaz", age: 55, birthplace: "Havana, Cuba", image_url: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/JoeyDiaz_800x600.jpg?quality=0.91&width=320&height=320&crop=true")
chad = Comedian.create(name: "Chad Daniels", age: 43, birthplace: "Fergus Falls, MN", image_url: "https://www.rumorscomedyclub.com/wp-content/uploads/2016/09/Chad-2019-bio.jpg")
kevin = Comedian.create(name: "Kevin Hart", age: 39, birthplace: "Philadelphia, PA", image_url: "http://www.philly.com/resizer/bHw4bvIexfBozzYo6gSgV1vpEXk=/1400x932/center/middle/arc-anglerfish-arc2-prod-pmn.s3.amazonaws.com/public/DBTWGCGWV5C7ZJBACNCBPOCUWE.jpg")
dave = Comedian.create(name: "Dave Chappelle", age: 45, birthplace: "Washington, D.C.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTII3JGyHZiZx-tRsKYcDk8jotJ6kK6yGNiCof1mLfTw5DxekFZtg")
chris = Comedian.create(name: "Chris Rock", age: 53, birthplace: "Andrews, SC", image_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/02/14/14/chris-rock-netflix.jpg?w968")
tom = Comedian.create(name: "Tom Segura", age: 39, birthplace: "Cincinnati, OH", image_url: "https://pixel.nymag.com/imgs/daily/vulture/2018/07/12/splitsider/879409292.w700.h467.2x.jpg")
ari = Comedian.create(name: "Ari Shaffir", age: 44, birthplace: "New York City, NY", image_url: "https://www.foodrepublic.com/wp-content/uploads/2016/02/AriShaffirCrop.jpg")
theo = Comedian.create(name: "Theo Von", age: 38, birthplace: "Mandeville, LA", image_url: "https://uproxx.files.wordpress.com/2016/02/theo-von-no-offense-feature.jpg?quality=95")
jerry = Comedian.create(name: "Jerry Seinfeld", age: 64, birthplace: "Brooklyn, NY", image_url: "https://www.gannett-cdn.com/-mm-/aec403ad632f33650ec1aa7926a673a5a6b987b8/c=420-0-2149-1300/local/-/media/2015/09/17/Westchester/Westchester/635780965457520146--ASBBrd-07-27-2012-PressMon-1-A002-2012-07-26-IMG-People-Seinfeld-7-1-4U1UD.jpg?width=534&height=401&fit=crop")
mitch = Comedian.create(name: "Mitch Hedberg", age: 51 , birthplace: "Saint Paul, MN", image_url: "https://m.media-amazon.com/images/M/MV5BMTQ0NDAyNDg5OV5BMl5BanBnXkFtZTgwMDUxNjEyMjE@._V1_.jpg")

Special.create(name: "Walk Your Way Out", runtime_mins: 77, comedian: bill, image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")
Special.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, comedian: bill, image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg")
Special.create(name: "You People Are All The Same", runtime_mins: 69, comedian: bill, image_url: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Special.create(name: "Strange Times", runtime_mins: 63, comedian: joe, image_url: "https://m.media-amazon.com/images/M/MV5BNzc2Mzg5YmMtMzM1NC00NDgwLTljYWQtZDdkNzBmNjZkNmJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Special.create(name: "Triggered", runtime_mins: 63, comedian: joe, image_url: "https://m.media-amazon.com/images/M/MV5BYTE0M2FkNGMtYjYxNi00MDRkLWE0YWUtNWI4NWU3NWIzMWIzXkEyXkFqcGdeQXVyMzE5NzI0NjE@._V1_.jpg")
Special.create(name: "Rocky Mountain High", runtime_mins: 63, comedian: joe, image_url: "https://m.media-amazon.com/images/M/MV5BNjI4OGY5MTktZjNiNC00MTgyLTlhZGMtMzBhYzcyZTI5YTljXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX750_AL_.jpg")
Special.create(name: "Sociably Unacceptable", runtime_mins: 57, comedian: joey, image_url: "https://m.media-amazon.com/images/M/MV5BZTAxNTViYmUtYWU0OC00YTNhLTg3YTYtMTkwMjgzOTFkZGFmL2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
Special.create(name: "As Is", runtime_mins: 52, comedian: chad, image_url: "https://m.media-amazon.com/images/M/MV5BODY2OWIxYzMtYjEwOS00ZjRiLWI3ZGEtMWFmYTQxOTFiY2E1L2ltYWdlXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg")
Special.create(name: "I'm A Grown Little Man", runtime_mins: 73, comedian: kevin, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_.jpg")
Special.create(name: "Let Me Explain", runtime_mins: 75, comedian: kevin, image_url: "https://m.media-amazon.com/images/M/MV5BMTg4MjM2MjAxOF5BMl5BanBnXkFtZTcwMTAzOTEyOQ@@._V1_SY1000_CR0,0,673,1000_AL_.jpg")
Special.create(name: "What Now?", runtime_mins: 96, comedian: kevin, image_url: "https://m.media-amazon.com/images/M/MV5BNzI2MDk3OTA5N15BMl5BanBnXkFtZTgwMDU1MDgxMDI@._V1_SY1000_CR0,0,674,1000_AL_.jpg")
Special.create(name: "Equaniminity", runtime_mins: 60, comedian: dave, image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(name: "Killin' Them Softly", runtime_mins: 57, comedian: dave, image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")
Special.create(name: "Kill The Messanger", runtime_mins: 79, comedian: chris, image_url: "https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_.jpg")
Special.create(name: "Bigger & Blacker", runtime_mins: 65, comedian: chris, image_url: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(name: "Never Scared", runtime_mins: 80, comedian: chris, image_url: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
Special.create(name: "Mostly Stories", runtime_mins: 73, comedian: tom, image_url: "https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg")
Special.create(name: "Completely Normal", runtime_mins: 74, comedian: tom, image_url: "https://m.media-amazon.com/images/M/MV5BMTcyODE0Mzk1Nl5BMl5BanBnXkFtZTgwMDk4ODE0NDE@._V1_.jpg")
Special.create(name: "Paid Regular", runtime_mins: 73, comedian: ari, image_url: "https://m.media-amazon.com/images/M/MV5BMjBlMGE4ZWUtZmExOC00NzcxLWFkMjMtNDYwMzczOGQ0NzRlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg")
Special.create(name: "Passive Aggressive", runtime_mins: 60, comedian: ari, image_url: "https://m.media-amazon.com/images/M/MV5BMTYzNDUyMjE4M15BMl5BanBnXkFtZTcwMTQ3NzQxOQ@@._V1_SY1000_CR0,0,647,1000_AL_.jpg")
Special.create(name: "No Offense", runtime_mins: 66, comedian: theo, image_url: "https://m.media-amazon.com/images/M/MV5BODMyZjU2NWQtMTI2ZC00Y2ZkLTllYjItNjNiM2Y1NTIyMmIyXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_.jpg")
Special.create(name: "Jerry Before Seinfeld", runtime_mins: 62, comedian: jerry, image_url: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
Special.create(name: "Comedy Central Presents: Mitch Hedberg", runtime_mins: 43, comedian: mitch)
