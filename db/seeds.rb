# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing Database"

User.destroy_all
Job.destroy_all
Employer.destroy_all

puts "Creating Users... "

user1 = User.create(
    first_name: "Oren",
    last_name: "Noyes",
    username: "onoyes",
    email: "orenwn@gmail.com",
    password: "password123",
    phone_number: "7206069221")

#  #user2 = User.create(
#     first_name: "John",
#     last_name: "Doe",
#     username: "jdoe",
#     email: "mail@mail.com",
#     password: "password456",
#     phone_number: "3034619735"

puts "Creating Employers... "

employer1 = Employer.create(
    name: "Brian Johnson",
    jobtype: "Snow Shoveling",
    jobday: "2023-01-31",
    location: "Fairmount, CO",
    price: 35,
    is_done: false
)

puts "Creating Jobs... "

Job.create(
    title: "Lawn in need of mowing",
    description: "I need my lawn mowed. It is approximately 7500 square feet.",
    location: "Applewood, CO",
    date: "2023-02-01",
    payout: 40,
    employer_id: employer1.id,
    user_id: user1.id
)
