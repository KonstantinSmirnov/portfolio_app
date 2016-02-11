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

user = User.create(
  email: 'user@test.com',
  password: 'user',
  password_confirmation: 'user',
)

project1 = Project.create(
  title: 'CMP',
  description: 'A system based on MS Dynamics implementation.',
  link: 'http://mail.ru'
  )

project2 = Project.create(
  title: 'Digital Signature',
  description: 'Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam.',
  link: 'http://mail.ru'
  )

project3 = Project.create(
  title: 'DEM Project',
  description: 'Cras mattis consectetur purus sit amet fermentum.',
  link: 'http://mail.ru'
  )
