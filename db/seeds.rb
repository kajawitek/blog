# frozen_string_literal: true

puts '# Creating Authors'
3.times do |a|
  author = Author.where(email: "author_#{a + 1}@example.com")
                 .first_or_create!(first_name: Faker::Name.first_name,
                                   last_name: Faker::Name.last_name,
                                   password: 'password')
  puts author.email
end

puts '# Creating Posts'
5.times do
  post = Post.create(title: Faker::Book.title, content: Faker::Quote.matz, author_id: Author.all.sample.id)
  puts post.title
end
