# frozen_string_literal: true

puts '# Creating Authors'
3.times do |a|
  author = Author.where(email: "author_#{a + 1}@example.com")
                 .first_or_create!(first_name: Faker::Name.first_name,
                                   last_name: Faker::Name.last_name,
                                   password: 'password')
  puts author.email
end
