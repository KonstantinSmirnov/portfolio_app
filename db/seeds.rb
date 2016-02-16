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
  logo_icon: 'tree',
  logo_text: 'Tree house',
  header: 'Make something you love',
  subheader: 'This is a subheader',
  text: 'There is a paragraph with text',
  linkedin_link: 'https://www.linkedin.com/in/smirnov-konstantin-9ba95770',
  index_description: 'There is index page description',
  index_keywords: 'There are index page keywords',
  projects_description: 'There is projects page description',
  projects_keywords: 'There are projects page keywords'
)
