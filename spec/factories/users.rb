FactoryBot.define do
  factory :user do
    nickname { Faker::Games::Pokemon.name }
    email { Faker::Internet.unique.email }
    password { '1a' + Faker::Internet.unique.password(min_length: 6) }
    password_confirmation { password }
    birthday { Faker::Date.birthday }
  end
end
