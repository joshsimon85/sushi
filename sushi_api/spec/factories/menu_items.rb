CATEGORIES = ['food', 'drink', 'desert']

FactoryBot.define do
  factory :menu_item do
    category { CATEGORIES.sample }
    name { Faker::Lorem.paragraphs(number: (3..12).to_a.sample).join(' ') }
    nutritional_information {
      {
        protein: Faker::Number.non_zero_digit,
        fat:  Faker::Number.non_zero_digit,
        carbohydrate:  Faker::Number.non_zero_digit,
        energy: [
          kcal: Faker::Number.non_zero_digit,
          kj: Faker::Number.non_zero_digit
        ],
        sugar: 3
      }
    }
    description {
      Faker::Lorem.paragraphs(number: (3..12).to_a.sample).join(' ')
    }
    price { (Faker::Number.decimal(r_digits: 2) * 100).to_i }
  end
end
