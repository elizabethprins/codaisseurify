FactoryGirl.define do
  factory :song do
    title    { Faker::Faker::StarWars.wookie_sentence }
  end
end
