# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email:'john@gmail.com', password: 'abcd1234')
user2 = User.create(email:'mark@gmail.com', password: 'abcd1234')
user3 = User.create(email:'andrew@gmail.com', password: 'abcd1234')
user4 = User.create(email:'luke@gmail.com', password: 'abcd1234')
user5 = User.create(email:'matthew@gmail.com', password: 'abcd1234')



puts 'Creating venues...'
users = User.all
Venue.categories.each do |category|
  20.times do
    Venue.create!(name: Faker::Company.name, category: category, user: users.sample, address: Faker::Address.full_address)
  end
end
puts 'Finished!'
