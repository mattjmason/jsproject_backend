# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mmorpg = Category.create(name: 'MMORPG')
first_person_shooter = Category.create(name: 'First Person Shooter')
sci_fi = Category.create(name: 'Sci-Fi')
third_person_shooter = Category.create(name: 'Third Person Shooter')
cartoon = Category.create(name: 'Cartoon')


destiny = Game.create(name: 'Destiny', genre: 'fantasy', published: '2012', description: 'power fantasy game', category: mmorpg)
gears_of_war = Game.create(name: 'Gears of War', genre: 'sci-fi', published: '2011', description: 'save the world', category: first_person_shooter)
