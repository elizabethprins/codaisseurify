FactoryGirl.define do
  factory :artist do
    name      { Faker::RickAndMorty.character }
    img_url   { Faker::Internet.url }
  end
end
