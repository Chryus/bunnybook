# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Bunny.create(name: "Donna", breed: "Dwarf Hotot", weight: "fat", temperament: "protective", age: 10)
c2 = Bunny.create(name: "Jasper", breed: "Polish", weight: "skinny", temperament: "sweet and steady", age: 8)
c3 = Bunny.create(name: "Bean", breed: "Rex", weight: "large", temperament: "sweet", age: 15)
c4 = Bunny.create(name: "Hakeem", breed: "Lionhead", weight: "average", temperament: "confused", age: 12)
c5 = Bunny.create(name: "Norman", breed: "English Lop", weight: "a bit fat", temperament: "loyal and loving", age: 5)

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
