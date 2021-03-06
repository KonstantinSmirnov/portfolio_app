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
  projects_title: 'Significant projects:',
  projects_text: 'There are my projects',
  linkedin_link: 'https://www.linkedin.com/in/smirnov-konstantin-9ba95770',
  contact_text: 'If you have any purpose to contact me please be free do to it on this page.',
  index_description: 'There is index page description',
  index_keywords: 'There are index page keywords',
  projects_description: 'There is projects page description',
  projects_keywords: 'There are projects page keywords'
)
