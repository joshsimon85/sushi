require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORIES = ['food', 'drink', 'desert']

10.times do
  MenuItem.create(
    category: CATEGORIES.sample,
    name: Faker::Lorem.paragraphs(number: (3..12).to_a.sample).join(' '),
    nutritional_information: {
      protein: Faker::Number.non_zero_digit,
      fat:  Faker::Number.non_zero_digit,
      carbohydrate:  Faker::Number.non_zero_digit,
      energy: [
        kcal: Faker::Number.non_zero_digit,
        kj: Faker::Number.non_zero_digit
      ],
      sugar: 3
    },
    description: Faker::Lorem.paragraphs(number: (3..12).to_a.sample).join(' '),
    price: (Faker::Number.decimal(r_digits: 2) * 100).to_i
  )
end
