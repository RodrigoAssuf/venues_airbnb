# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Venue.destroy_all

puts 'Creating users...'
User.create!(email:'ricardo@gmail.com', password: '1234abcd')
User.create!(email:'manuel@gmail.com', password: '1234abcd')
User.create!(email:'milene@gmail.com', password: '1234abcd')
User.create!(email:'rodrigo@gmail.com', password: '1234abcd')
puts 'Finished!'

puts 'Creating venues...'
users = User.all
Venue.create!( name: 'Kay Place', category: 'Wedding', user: users.sample, price: '1300', address: 'Ladeira da Gloria 26, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=200' )
Venue.create!( name: 'Perfect day', category: 'Wedding', user: users.sample, price: '800', address: 'rua Visconde de Piraja 435, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=553' )
Venue.create!( name: 'Cool Place', category: 'Wedding', user: users.sample, price: '500', address: 'Avenida Rio Branco 76, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=354' )
Venue.create!( name: 'Playland', category: 'Birthday', user: users.sample, price: '2000', address: 'Av Presidente Vargas 88, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=888' )
Venue.create!( name: 'Feliz Cumple', category: 'Birthday', user: users.sample, price: '5300', address: 'rua honorio de barros 55, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=666' )
Venue.create!( name: 'Kidz Bday', category: 'Birthday', user: users.sample, price: '700', address: 'Sambaiba 12, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=90' )
Venue.create!( name: 'Ibis Hotel', category: 'Business', user: users.sample, price: '1500', address: 'Ladeira da Gloria 86, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=222' )
Venue.create!( name: 'Mayor House', category: 'Business', user: users.sample, price: '600', address: 'rua honorio de barros 12, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=500' )
Venue.create!( name: 'Rose Center', category: 'Business', user: users.sample, price: '300', address: 'Sambaiba 45, Rio de Janeiro, RJ', remote_photo_url: 'https://picsum.photos/400/300/?image=450' )
puts 'Finished!'
