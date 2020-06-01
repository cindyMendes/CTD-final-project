require 'faker'
FactoryBot.define do
  factory :dog do |f|
    f.breed { Faker::Lorem.word }
    f.size { Faker::Lorem.word }
    f.color { Faker::Color.color_name }
    f.location { Faker::Lorem.word }
    # f.image { Faker::Avatar.image("https://lorempixel.com/300/300") }
    # f.image { Faker::Placeholdit.image("https://lorempixel.com/300/300") }
    # f.image { Faker::LoremPixel.image("https://lorempixel.com/300/300") }
    # f.image { Faker::LoremFlickr.image("https://lorempixel.com/300/300") }
    f.image { Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/dog1.jpg'))) }
    f.date { Faker::Date.between(from: 2.days.ago, to: Date.today) }
    f.description { Faker::Lorem.sentence }
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.phone { Faker::Number.number(digits: 10) }
    f.email { Faker::Internet.email }
    f.list { FactoryBot.create(:list) }

  end
end
