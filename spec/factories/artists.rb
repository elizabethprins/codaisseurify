FactoryGirl.define do
  factory :artist do
    name      { Faker::Name.name }
    img_url   { Faker::Internet.url }
  end
end
