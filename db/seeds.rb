# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(email: "munkhjin@example.com",
    password: 'password',
    password_confirmation: "password",
    admin: true)


1000.times do |i|
    post = Post.new
    post.title= Faker::Lorem.sentence(word_count: 3, random_words_to_add: 7)
    post.body= Faker::Lorem.paragraph_by_chars(number:5000)
    post.user =  User.first
    post.views = Faker::Number.between(from: 1, to: 500)
    post.save
end