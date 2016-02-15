# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(
  email: 'admin@test.com',
  password: 'admin',
  password_confirmation: 'admin',
  role: 1 #admin
)

content = Content.create(
  header: 'Make something you love',
  subheader: 'This is a subheader',
  text: 'There is a paragraph with text'
)
