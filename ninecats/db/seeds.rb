# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Cat.destroy_all

10.times do 
    Cat.create!(
        birth_date: Faker::Date.backward(14000), 
        color: Faker::Color.color_name, 
        name: Faker::Name.first_name, 
        sex: ['M', 'F'].sample,
        description: Faker::TvShows::SouthPark.quote
    )
end