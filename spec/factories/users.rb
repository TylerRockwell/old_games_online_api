FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user-#{n}@example.com" }
    password 'password'
    first_name Faker::RickAndMorty.character.split(' ').first
    last_name Faker::RickAndMorty.character.split(' ').last
    stripe_id nil
    agreed_to_terms true
  end
end
