FactoryBot.define do
  factory :rule do
    association :user
    if_1 { Faker::Lorem.sentence }
    then_1 { Faker::Lorem.sentence }
  end
end