# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.order(:created_at).take(1)
15.times do
	title = Faker::Lorem.sentence(5)
  content = Faker::Lorem.paragraph(45)
  users.each { |user| user.questions.create!(title: title, content: content) }
end