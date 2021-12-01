# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(
  email: "test1@email.com",
  password: "test12",
  name: "testName",
  bio: 'This is a test'
)

user2 = User.create!(
  email: "test2@email.com",
  password: "test12",
  name: "Person",
  bio: "Another tester"
)

user3 = User.create!(
  email: "jntroncone@gmail.com",
  password: "password",
  name: "Julie Troncone",
  bio: 'Cats!'
)