# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Bunny.create(name: "Donna", breed: "Dwarf Hotot", weight: "fat", temperament: "protective", age: 10, img_url: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwj-xKTS5r_SAhUBSCYKHXCaAI8QjRwIBw&url=http%3A%2F%2Frabbitbreeders.us%2Fdwarf-hotot-rabbits&psig=AFQjCNHmG114qXf_W9Qckqbyalhg18I33w&ust=1488818334452304')
c2 = Bunny.create(name: "Jasper", breed: "Polish", weight: "skinny", temperament: "sweet and steady", age: 8, img_url: 'https://scontent.cdninstagram.com/t51.2885-19/s150x150/15876097_1278321042260182_7911293904845012992_a.jpg')
c3 = Bunny.create(name: "Bean", breed: "Rex", weight: "large", temperament: "sweet", age: 15, img_url: 'https://s-media-cache-ak0.pinimg.com/564x/6f/e5/80/6fe5800a769778035853fd5f9da3a0d6.jpg')
c4 = Bunny.create(name: "Hakeem", breed: "Lionhead", weight: "average", temperament: "confused", age: 12, img_url: 'http://cuteoverload.files.wordpress.com/2009/05/dscf0329.jpg')
c5 = Bunny.create(name: "Norman", breed: "English Lop", weight: "a bit fat", temperament: "loyal and loving", age: 5, 'http://www.mylittlesweetie.com/mojo12wksweb2.jpg')

h1 = Hobby.create(name: "binkying")
h2 = Hobby.create(name: "flopping")
h3 = Hobby.create(name: "chewing")
h4 = Hobby.create(name: "digging")
h5 = Hobby.create(name: "head butting")

BunnyHobby.create(bunny: c1, hobby: h1, proficiency: 5)
BunnyHobby.create(bunny: c2, hobby: h2, proficiency: 5)
BunnyHobby.create(bunny: c3, hobby: h3, proficiency: 3)
BunnyHobby.create(bunny: c5, hobby: h5, proficiency: 4)
BunnyHobby.create(bunny: c5, hobby: h5, proficiency: 2)
