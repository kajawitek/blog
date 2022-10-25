FactoryBot.define do
  factory :post do
    title { Faker::Book.title }
    content { Faker::Lorem.paragraphs }
    published_at { Time.zone.now }
    author
  end
end
