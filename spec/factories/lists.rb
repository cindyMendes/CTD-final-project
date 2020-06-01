require 'faker'
FactoryBot.define do
  factory :list do |f|
    f.status { Faker::Lorem.word }
  end
end
