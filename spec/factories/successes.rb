FactoryBot.define do
  factory :success do
    association :user
    post { Faker::Lorem.sentence }
  end
end
