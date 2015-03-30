# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = ['Literary', 'Mainstream', 'Mystery', 'Romance', 'Speculative', 'Science Fiction', 'Young Adult']
genres.each do |genre|
  Genre.create(name: genre)
end

roles = ['registered', 'banned', 'admin']
roles.each do |role|
  Role.find_or_create_by({name: role})
end